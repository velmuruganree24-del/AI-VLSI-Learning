q = 0
print("T Flip-Flop Simulation")
for clk in range(10):
    t = 1 if clk < 6 else 0
    if t == 1:
        q = 1 - q  # toggle
    print(f"clk={clk}, t={t}, q={q}")
