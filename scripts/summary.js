// @ts-check

/**
 * @typedef {`${"ns" | "us" | "ms" | "s" | "m"}/op`} TimeUnit
 *
 * @typedef {{
 *   mch_version: string,
 *   forks: number,
 *   jvm: string,
 *   jvm_args: string[],
 *   jdk_version: string,
 *   vm_name: string,
 *   vm_version: string,
 *   mc: string,
 *   mc_args: string[],
 *   mc_version: string,
 *   warmup_iterations: number,
 *   warmup_time: string,
 *   measurement_iterations: number,
 *   measurement_time: string,
 *   results: {
 *     group: string,
 *     benchmark: string,
 *     mode: string,
 *     count: number,
 *     score: number,
 *     error: number,
 *     unit: TimeUnit,
 *     scores: number[],
 *   }[],
 * }} Results
 */

module.exports = (/** @type {{ context: { sha: string }, timeUnit: TimeUnit }} */ { context }) => {
  const fs = require('fs');

  /** @type {Results} */
  const results = JSON.parse(fs.readFileSync('../mch-results.json').toString());

  const lines = [
    '<h3>Results</h3>',
    '<table>',
    '<thead>',
    '<tr>',
    '<th align="left">Group</th>',
    '<th align="left">Benchmark</th>',
    '<th align="center">Mode</th>',
    '<th align="right">Count</th>',
    '<th align="right">Score</th>',
    '<th align="right">Error</th>',
    '<th align="left">Unit</th>',
    '</tr>',
    '</thead>',
  ];

  const sortedResults = results.results.sort((a, b) => a.benchmark.localeCompare(b.benchmark));

  for (const { group, benchmark, mode, count, score, error, unit } of sortedResults) {
    /** @type {string} */
    let benchmarkTag;
    if (benchmark === 'mch:baseline') {
      benchmarkTag = `<details><summary><code>${benchmark}</code></summary><pre lang="mcfunction"><code></code></pre></details>`;
    } else {
      const [namespace, path] = benchmark.split(':');
      const file = `worlds/${group}/datapacks/${group}/data/${namespace}/functions/${path}.mcfunction`;
      const href = `https://github.com/MCJE-Tech-Shares/Benchmarks/blob/${context.sha}/${file}`;
      const code = fs.readFileSync(file);
      benchmarkTag = `<details><summary><a href="${href}"><code>${benchmark}</code></a></summary><pre lang="mcfunction"><code>${code}</code></pre></details>`;
    }
    lines.push(
      '<tbody>',
      '<tr>',
      `<td align="left">${group}</td>`,
      `<td align="left">${benchmarkTag}</td>`,
      `<td align="center">${mode}</td>`,
      `<td align="right">${count}</td>`,
      `<td align="right">${score.toFixed(6)}</td>`,
      `<td align="right">± ${error.toFixed(6)}</td>`,
      `<td align="left">${unit}</td>`,
      '</tr>',
      '</tbody>',
    );
  }

  lines.push('</table>');

  lines.push(
    '',
    '```mermaid',
    'gantt',
    'dateFormat X',
    `axisFormat %s`,
  );

  /**
   * @param {number} time
   * @param {TimeUnit} unit
   * @returns {number}
   */
  function convertToNs(time, unit) {
    switch (unit) {
      case 'ns/op': return time;
      case 'us/op': return time * 1000;
      case 'ms/op': return time * 1000000;
      case 's/op': return time * 1000000000;
      case 'm/op': return time * 60000000000;
    }
  }

  for (const { benchmark, score, error, unit } of sortedResults) {
    const scoreNs = convertToNs(score, unit);
    const errorNs = convertToNs(error, unit);
    lines.push(
      `section ${benchmark.replace(':', '#58;')}`,
      `± ${errorNs.toFixed(6)} : 0, ${Math.round(scoreNs)}`,
    );
  }
  lines.push(
    '```',
    '',
  );

  lines.push(
    '<h3>Metadata</h3>',
    '<table>',
    '<thead>',
    '<tr>',
    '<th align="left">Key</th>',
    '<th align="left">Value</th>',
    '</tr>',
    '</thead>',
    `<tbody><tr><td align="left"><samp>mch_version</samp></td><td align="left">${results.mch_version}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>forks</samp></td><td align="left">${results.forks}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>jvm</samp></td><td align="left">${results.jvm}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>jvm_args</samp></td><td align="left">${results.jvm_args.join(' ')}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>jdk_version</samp></td><td align="left">${results.jdk_version}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>vm_name</samp></td><td align="left">${results.vm_name}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>vm_version</samp></td><td align="left">${results.vm_version}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>mc</samp></td><td align="left">${results.mc}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>mc_args</samp></td><td align="left">${results.mc_args.join(' ')}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>mc_version</samp></td><td align="left">${results.mc_version}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>warmup_iterations</samp></td><td align="left">${results.warmup_iterations}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>warmup_time</samp></td><td align="left">${results.warmup_time}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>measurement_iterations</samp></td><td align="left">${results.measurement_iterations}</td></tr></tbody>`,
    `<tbody><tr><td align="left"><samp>measurement_time</samp></td><td align="left">${results.measurement_time}</td></tr></tbody>`,
    '</table>',
  );

  fs.appendFileSync(/** @type {string} */(process.env.GITHUB_STEP_SUMMARY), lines.join('\n'));
};
