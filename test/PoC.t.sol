// SPDX-License-Identifier: BUSL-1.1
/**
 * @title [Protocol] - [Bug description]
 * @notice PoC for [Platform] submission ([Finding ID, e.g. F-01])
 * @dev Demonstrates [impact] by exploiting [root cause].
 *
 * Vulnerable contract: [Contract] ([context, e.g. vault module])
 * Vulnerable function: [function]
 * Vulnerable lines: [File.sol:LINE-LINE]
 * Program: [program URL]
 * Report: [report thread URL]
 * Severity: [Critical/High/Medium/Low]
 * Target: [org/repo] @ [commit] ("[release]")
 *
 * HOW TO USE: copy the production contracts from the scope repo (pinned
 * commit above) into ../src byte-identical, put PoC-only mocks in
 * ./mocks/, replace the placeholder test below with the real exploit,
 * and keep the header + the before/after log pattern. The before/after
 * numbers ARE the proof.
 */
pragma solidity 0.8.35;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

contract PoCTemplate is Test {
    // PLACEHOLDER — demonstrates the mandatory before/after log pattern.
    // Replace this test with the real exploit. It must pass as-is so the
    // template itself is verified working.
    function test_TemplatePlaceholder_BeforeAfterLogs() public pure {
        uint256 victimBalanceBefore = 100 ether;
        uint256 attackerBalanceBefore = 0;

        // --- exploit step goes here ---
        uint256 stolen = 100 ether;
        uint256 victimBalanceAfter = victimBalanceBefore - stolen;
        uint256 attackerBalanceAfter = attackerBalanceBefore + stolen;

        console.log("victim balance before", victimBalanceBefore);
        console.log("victim balance after", victimBalanceAfter);
        console.log("attacker balance before", attackerBalanceBefore);
        console.log("attacker balance after", attackerBalanceAfter);

        assertEq(victimBalanceAfter, 0, "victim must end at 0");
        assertEq(attackerBalanceAfter, 100 ether, "attacker must gain 100 ether");
    }
}
