# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0
# test_my_design.py (simple)

import cocotb
from cocotb.triggers import Timer


# test_my_design.py (extended)

import cocotb
from cocotb.triggers import FallingEdge, Timer, RisingEdge


async def generate_clock(dut):
    """Generate clock pulses."""

    for cycle in range(100000):
        dut.Clk.value = 0
        await Timer(1, units="ns")
        dut.Clk.value = 1
        await Timer(1, units="ns")
    dut._log.info("Done!")


@cocotb.test()
async def my_second_test(dut):
    """Try accessing the design."""

    await cocotb.start(generate_clock(dut))  # run the clock "in the background"

    await Timer(5, units="ns")  # wait a bit
    await FallingEdge(dut.Clk)  # wait for falling edge/"negedge"

    dut._log.info("my_signal_1 is %s while clock is %s", dut.my_signal_1.value, dut.Clk.value)
    assert dut.my_signal_2.value[0] == 0, "my_signal_2[0] is not 0!"


    for i in range (100):
        await RisingEdge(dut.Clk)  # Stall for a bit to see more signal generation


@cocotb.test()
async def my_second_test(dut):
    """Try accessing the design."""

    await cocotb.start(generate_clock(dut))  # run the clock "in the background"

    await Timer(5, units="ns")  # wait a bit
    await FallingEdge(dut.Clk)  # wait for falling edge/"negedge"


    dut.wren.value=0
    dut.wraddress.value=0
    dut.data.value=42

    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"
    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"
    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"
    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"

    dut.wren.value=1
    dut.rdaddress.value=0

    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"
    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"
    await RisingEdge(dut.Clk)  # wait for falling edge/"negedge"



