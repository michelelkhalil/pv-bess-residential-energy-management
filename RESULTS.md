# Simulation Results

Five operating conditions were used to validate the rule-based energy management strategy. The model was simulated for 0.8 s using a 1 us power-stage sample time and a 10 us control sample time.

## Condition 1 - PV generation greater than load: battery charging

When PV generation exceeds the load and battery SOC is below 90%, the PV supplies the load and the surplus charges the battery.

### PV power
![Condition 1 PV power](results/condition_1/pv_power.png)

### Battery SOC
![Condition 1 battery SOC](results/condition_1/battery_soc.png)

### Bus and grid power
![Condition 1 bus and grid power](results/condition_1/bus_grid_power.png)

## Condition 2 - PV generation greater than load with high SOC: grid export

When PV generation exceeds the load and the battery is above the upper SOC threshold, surplus power is directed to the grid rather than continuing to charge the battery.

### PV power
![Condition 2 PV power](results/condition_2/pv_power.png)

### Battery SOC
![Condition 2 battery SOC](results/condition_2/battery_soc.png)

### Bus and grid power
![Condition 2 bus and grid power](results/condition_2/bus_grid_power.png)

## Condition 3 - PV generation lower than load: battery discharging

When PV generation is below the load and SOC remains above 20%, the battery discharges to support the deficit.

### PV power
![Condition 3 PV power](results/condition_3/pv_power.png)

### Battery SOC
![Condition 3 battery SOC](results/condition_3/battery_soc.png)

### Bus and grid power
![Condition 3 bus and grid power](results/condition_3/bus_grid_power.png)

## Condition 4 - PV not available: battery-dominant operation

With no available PV generation and sufficient battery SOC, the battery supplies the load.

### PV power
![Condition 4 PV power](results/condition_4/pv_power.png)

### Battery SOC
![Condition 4 battery SOC](results/condition_4/battery_soc.png)

### Bus and grid power
![Condition 4 bus and grid power](results/condition_4/bus_grid_power.png)

## Condition 5 - Low battery SOC: grid support

When PV generation is below the load and battery SOC is below 20%, further battery discharge is restricted and the grid supplies the required deficit.

### PV power
![Condition 5 PV power](results/condition_5/pv_power.png)

### Battery SOC
![Condition 5 battery SOC](results/condition_5/battery_soc.png)

### Bus and grid power
![Condition 5 bus and grid power](results/condition_5/bus_grid_power.png)

> Note: the plots include the short startup transient of the switching model before steady operation is established.
