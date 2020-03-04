﻿within BESTESTAir.TestCases;
model TestCase "Testcase model"
  extends Modelica.Icons.Example;

  BaseClasses.Case900FF zon(mAir_flow_nominal=fcu.mAir_flow_nominal)
    annotation (Placement(transformation(extent={{34,-10},{54,10}})));
  BaseClasses.Thermostat con
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  BaseClasses.FanCoilUnit fcu
    annotation (Placement(transformation(extent={{-20,-8},{0,20}})));

equation
  connect(fcu.supplyAir, zon.supplyAir)
    annotation (Line(points={{0,13.7778},{20,13.7778},{20,2},{34,2}},
                                                           color={0,127,255}));
  connect(zon.returnAir, fcu.returnAir) annotation (Line(points={{34,-2},{20,-2},
          {20,-6.44444},{0,-6.44444}},
                              color={0,127,255}));
  connect(con.yCooVal, fcu.uCooVal) annotation (Line(points={{-59,8},{-36,8},{
          -36,13.7778},{-21.4286,13.7778}},
                          color={0,0,127}));
  connect(con.yHeaVal, fcu.uHeaVal) annotation (Line(points={{-59,4},{-36,4},{
          -36,6},{-21.4286,6}},
                          color={0,0,127}));
  connect(con.yFan, fcu.uFan) annotation (Line(points={{-59,0},{-40,0},{-40,
          -1.77778},{-21.4286,-1.77778}},
                    color={0,0,127}));
  connect(con.yFanSta, fcu.uFanSta) annotation (Line(points={{-59,-4},{-44,-4},
          {-44,-6.44444},{-21.4286,-6.44444}},color={255,0,255}));
  connect(zon.TRooAir, con.TZon) annotation (Line(points={{61,0},{80,0},{80,-40},
          {-100,-40},{-100,0},{-82,0}},
                                      color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=31536000,
      Interval=300,
      Tolerance=1e-06,
      __Dymola_Algorithm="Cvode"),
Documentation(info="<html>
General model description.
<h3>Building Design and Use</h3>
<h4>Architecture</h4>
<p>
The building is a single room based on the BESTEST Case 900 model definition.
The floor dimensions are 6m x 8m and the floor-to-ceiling height is 2.7m.  
There are four exterior walls facing the cardinal directions and a flat roof.
The walls facing east-west have the short dimension.  The south wall contains
two windows, each 3m wide and 2m tall.  The use of the building is assumed
to be a two-person office with a light load density.
</p>
<h4>Constructions</h4>
<p>
The constructions are based on the BESTEST Case 900 model definition.  The
exterior walls are made of concrete block and insulation, while the floor
is a concrete slab.  The roof is made of wood frame with insulation.  The 
layer-by-layer specifications are (Outside to Inside):
</p>
<p>
<b>Exterior Walls</b>
<table>
  <tr>
  <th>Name</th>
  <th>Thickness [m]</th>
  <th>Thermal Conductivity [W/m-K]</th>
  <th>Specific Heat Capacity [J/kg-K]</th>
  <th>Density [kg/m3]</th>
  </tr>
  <tr>
  <td>Layer 1</td>
  <td>0.009</td>
  <td>0.140</td>
  <td>900</td>
  <td>530</td>
  </tr>
  <tr>
  <td>Layer 2</td>
  <td>0.0615</td>
  <td>0.040</td>
  <td>1400</td>
  <td>10</td>
  </tr>
  <tr>
  <td>Layer 3</td>
  <td>0.100</td>
  <td>0.510</td>
  <td>1000</td>
  <td>1400</td>
  </tr>
  </table>
<table>
  <tr>
  <th>Name</th>
  <th>IR Emissivity [-]</th>
  <th>Solar Emissivity [-]</th>
  </tr>
  <tr>
  <td>Outside</td>
  <td>0.9</td>
  <td>0.6</td>
  </tr>
  <tr>
  <td>Inside</td>
  <td>0.9</td>
  <td>0.6</td>
  </tr>
</table>
</p>
<p>
<b>Floor</b>
<table>
  <tr>
  <th>Name</th>
  <th>Thickness [m]</th>
  <th>Thermal Conductivity [W/m-K]</th>
  <th>Specific Heat Capacity [J/kg-K]</th>
  <th>Density [kg/m3]</th>
  </tr>
  <tr>
  <td>Layer 1</td>
  <td>1.007</td>
  <td>0.040</td>
  <td>0</td>
  <td>0</td>
  </tr>
  <tr>
  <td>Layer 2</td>
  <td>0.080</td>
  <td>1.130</td>
  <td>1000</td>
  <td>1400</td>
  </tr>
</table>
<table>
  <tr>
  <th>Name</th>
  <th>IR Emissivity [-]</th>
  <th>Solar Emissivity [-]</th>
  </tr>
  <tr>
  <td>Outside</td>
  <td>0.9</td>
  <td>0.6</td>
  </tr>
  <tr>
  <td>Inside</td>
  <td>0.9</td>
  <td>0.6</td>
  </tr>
</table>
</p>
<p>
<b>Roof</b>
<table>
  <tr>
  <th>Name</th>
  <th>Thickness [m]</th>
  <th>Thermal Conductivity [W/m-K]</th>
  <th>Specific Heat Capacity [J/kg-K]</th>
  <th>Density [kg/m3]</th>
  </tr>
  <tr>
  <td>Layer 1</td>
  <td>0.019</td>
  <td>0.140</td>
  <td>900</td>
  <td>530</td>
  </tr>
  <tr>
  <td>Layer 2</td>
  <td>0.1118</td>
  <td>0.040</td>
  <td>840</td>
  <td>12</td>
  </tr>
  <tr>
  <td>Layer 3</td>
  <td>0.010</td>
  <td>0.160</td>
  <td>840</td>
  <td>950</td>
  </tr>
</table>
<table>
  <tr>
  <th>Name</th>
  <th>IR Emissivity [-]</th>
  <th>Solar Emissivity [-]</th>
  </tr>
  <tr>
  <td>Outside</td>
  <td>0.9</td>
  <td>0.6</td>
  </tr>
  <tr>
  <td>Inside</td>
  <td>0.9</td>
  <td>0.6</td>
  </tr>
</table>
<p>
The windows are double pane clear 3.175mm glass with 13mm air gap.
</p>

<h4>Occupancy schedules</h4>
<p>
There is maximum occupancy (two people) from 8am to 6pm each day, 
and no occupancy during all other times.
</p>
<h4>Internal loads and schedules</h4>
<p>
The internal heat gains from plug loads come mainly from computers and monitors.
The internal heat gains from lighting come from hanging fluorescent fixtures.
Both types of loads are at maximum during occupied periods and 0.1 maximum 
during all other times.
</p>
<h4>Climate data</h4>
<p>
The climate is assumed to be near Denver, CO, USA with a latitude and 
longitude of 39.76,-104.86.  The climate data comes from the 
Denver-Stapleton,CO,USA,TMY.
</p>
<h3>HVAC System Design</h3>
<h4>Primary and secondary system designs</h4>
<p>
Heating and cooling is provided to the office using a four-pipe 
fan coil unit (FCU).  The FCU contains a fan, cooling coil, heating coil, 
and filter.  The fan draws room air into the unit, blows it over the coils 
and through the filter, and supplies the conditioned air back to the room.
There is a variable speed drive serving the fan motor.  The cooling coil
is served by chilled water produced by a chiller and the heating coil is 
served by hot water produced by a gas boiler.
</p>
<h4>Equipment specifications and performance maps</h4>
<p>
For the fan, the design airflow rate is 0.55 kg/s and design pressure rise is 
185 Pa.  The fan and motor efficiencies are both constant at 0.7.
The heat from the motor is added to the air stream.  The minimum fan speed 
is 20%.

The cooling coil capacity is assumed to be 3.67 kW with a supply water 
temperature of 7.2 C.  The heating coil capacity is assumed to be 7.00 kW 
with a supply water temperature of 60 C.  Water flow through each of the coils
is controlled with equal-percentage two-way valves.  Pump power for water
flow through the coils is not considered.

The COP of the chiller is assumed constant at 3.0.  The efficiency of the 
gas boiler is assumed constant at 0.9.
</p>
<h4>Rule-based or local-loop controllers (if included)</h4>
<p>
A baseline thermostat controller provides heating and cooling as necessary
to the room by modulating the heating coil valve, cooling coil valve, and 
fan speed.  The thermostat uses two different PI controllers for heating and 
cooling, each taking the respective zone temperature setpoint and zone
temperature measurement as inputs.  The outputs are used to control the
heating valve and cooling valve respectively, as well as the fan speed, 
with a minimum speed of 20% and hysteresis to enable/disable the fan.

</p>
<p align=\"center\">
<img alt=\"Control scheme diagram\"
src=\"../../../doc/images/ControlSchematic.png\" width=600 />
</p>

<h3>Model IO's</h3>
<h4>Inputs</h4>
The model inputs are:
<ul>
<li>
<code>fcu_oveFan_u</code> [1] [min=0.0, max=1.0]: Fan speed control signal
</li>
<li>
<code>fcu_oveCooVal_u</code> [1] [min=0.0, max=1.0]: Cooling valve control signal
</li>
<li>
<code>fcu_oveHeaVal_u</code> [1] [min=0.0, max=1.0]: Heating valve control signal
</li>
<li>
<code>fcu_oveFanSta_u</code> [1] [min=0.0, max=1.0]: Fan status control signal
</li>
<li>
<code>con_oveTSetHea_u</code> [K] [min=288.15, max=296.15]: Zone temperature setpoint for heating
</li>
<li>
<code>con_oveTSetCoo_u</code> [K] [min=296.15, max=303.15]: Zone temperature setpoint for cooling
</li>
</ul>
<h4>Outputs</h4>
The model outputs are:
<ul>
<li>
<code>fcu_reaPCoo_y</code> [W] [min=None, max=None]: Cooling electrical power consumption
</li>
<li>
<code>fcu_reaFloHea_y</code> [kg/s] [min=None, max=None]: Heating coil water flow rate
</li>
<li>
<code>fcu_reaCooVal_y</code> [1] [min=None, max=None]: Cooling valve control signal
</li>
<li>
<code>fcu_reaHeaVal_y</code> [1] [min=None, max=None]: Heating valve control signal
</li>
<li>
<code>fcu_reaTSup_y</code> [K] [min=None, max=None]: Supply air temperature
</li>
<li>
<code>fcu_reaFloSup_y</code> [kg/s] [min=None, max=None]: Supply air mass flow rate
</li>
<li>
<code>fcu_reaTCooLea_y</code> [K] [min=None, max=None]: Cooling coil water leaving temperature
</li>
<li>
<code>con_reaTSetCoo_y</code> [K] [min=None, max=None]: Zone air temperature setpoint for cooling
</li>
<li>
<code>zon_reaPPlu_y</code> [W] [min=None, max=None]: Plug load power submeter
</li>
<li>
<code>fcu_reaPFan_y</code> [W] [min=None, max=None]: Supply fan electrical power consumption
</li>
<li>
<code>con_reaTSetHea_y</code> [K] [min=None, max=None]: Zone air temperature setpoint for heating
</li>
<li>
<code>fcu_reaFloCoo_y</code> [kg/s] [min=None, max=None]: Cooling coil water flow rate
</li>
<li>
<code>fcu_reaTHeaLea_y</code> [K] [min=None, max=None]: Heating coil water leaving temperature
</li>
<li>
<code>fcu_reaPHea_y</code> [W] [min=None, max=None]: Heating thermal power consumption
</li>
<li>
<code>zon_reaPLig_y</code> [W] [min=None, max=None]: Lighting power submeter
</li>
<li>
<code>fcu_reaFanSpeSet_y</code> [1] [min=None, max=None]: Supply fan speed setpoint
</li>
<li>
<code>fcu_reaTRet_y</code> [K] [min=None, max=None]: Return air temperature
</li>
<li>
<code>zon_reaTRooAir_y</code> [K] [min=None, max=None]: Zone air temperature
</li>
<li>
<code>zon_reaCO2RooAir_y</code> [1] [min=None, max=None]: Zone air CO2 concentration
</li>
</ul>
<h3>Additional System Design</h3>
<h4>Lighting</h4>
<p>
There is no daylighting system in the building.
</p>
<h4>Shading</h4>
<p>
There are no shades on the building.
</p>
<h4>Onsite Generation and Storage</h4>
<p>
There is no energy generation or storage on the site.
</p>
<h3>Model Implementation Details</h3>
<h4>Moist vs. dry air</h4>
<p>
A moist air model is used, but condensation is not modeled on the cooling coil
and humidity is not monitored.  The heating and cooling coils are modeled
with a constant effectiveness of 0.8.

</p>
<h4>Pressure-flow models</h4>
<p>
The FCU fan is speed-controlled and the resulting flow is calculated based
on resulting pressure rise by the fan and fixed pressure drop of the system.
</p>
<h4>Infiltration models</h4>
<p>
A constant infiltration flowrate is assumed to be 0.5 ACH.
</p>
<h4>Other assumptions</h4>
<p>
The design parameters for the system were determined based on the required
airflow and coil capacities to serve the max heating and cooling loads with a 
constant cooling supply air temperature of 12.8 C and heating supply air 
temperature of 40.0 C.  The design coil water flowrates are determined
assuming a design water temperature rise of 5 C across the cooling coil
and water temperature drop of 20 C across the heating coil.
</p>
<p>
CO2 generation is 0.0048 L/s per person (Table 5, Persily and De Jonge 2017) 
and density of CO2 assumed to be 1.8 kg/m^3, 
making CO2 generation 8.64e-6 kg/s per person.
Outside air CO2 concentration is 400 ppm.  However, CO2 concentration 
is not controlled for in the model.
</p>
<p>
Persily, A. and De Jonge, L. (2017). 
Carbon dioxide generation rates for building occupants.
Indoor Air, 27, 868–879.  https://doi.org/10.1111/ina.12383.
</p>
<h3>Scenario Information</h3>
<h4>Energy Pricing</h4>
<p>
The <b>Constant Electricity Price</b> profile is:
<ul>
Based on the Schedule R tariff
for winter season and summer season first 500 kWh as defined by the 
utility servicing the assumed location of the test case.  It is $0.05461/kWh.
For reference,
see https://www.xcelenergy.com/company/rates_and_regulations/rates/rate_books
in the section on Current Tariffs/Electric Rate Books (PDF).
</ul>
</p>
<p>
The <b>Dynamic Electricity Price</b> profile is:
<ul>
Based on the Schedule RE-TOU tariff
as defined by the utility servicing the assumed location of the test case.
For reference,
see https://www.xcelenergy.com/company/rates_and_regulations/rates/rate_books
in the section on Current Tariffs/Electric Rate Books (PDF).
</ul>
</p>
<p>
<ul>
<li>
Summer on-peak is $0.13814/kWh.
</li>
<li>
Summer mid-peak is $0.08420/kWh.
</li>
<li>
Summer off-peak is $0.04440/kWh.
</li>
<li>
Winter on-peak is $0.08880/kWh.
</li>
<li>
Winter mid-peak is $0.05413/kWh.
</li>
<li>
Winter off-peak is $0.04440/kWh.
</li>
<li>
The Summer season is June 1 to September 30.
</li>
<li>
The Winter season is October 1 to May 31.
</li>
</p>
<p>
<u>The On-Peak Period is</u>:
<ul>
<li>
Summer and Winter weekdays except Holidays, between 2:00 p.m. and 6:00 p.m. 
local time.
</li>
</ul>
<u>The Mid-Peak Period is</u>:
<ul>
<li>
Summer and Winter weekdays except Holidays, between 9:00 a.m. and
2:00 p.m. and between 6:00 p.m. and 9:00 p.m. local time.
</li>
<li>
Summer and Winter weekends and Holidays, between 9:00 a.m. and
9:00 p.m. local time.
</li>
</ul>
<u>The Off-Peak Period is</u>:
<ul>
<li>
Summer and Winter daily, between 9:00 p.m. and 9:00 a.m. local time. 
</li>
</ul>
</ul>
</p>
<p>
The <b>Highly Dynamic Electricity Price</b> profile is:
<ul>
Based on the the
day-ahead energy prices (LMP) as determined in the Southwest Power Pool 
wholesale electricity market for node LAM345 in the year 2018.
For reference,
see https://marketplace.spp.org/pages/da-lmp-by-location#%2F2018.
</ul>
</p>
<p>
The <b>Gas Price</b> profile is:
<ul>
Based on the Schedule R tariff for usage price per therm as defined by the 
utility servicing the assumed location of the test case.  It is $0.002878/kWh
($0.0844/therm).
For reference,
see https://www.xcelenergy.com/company/rates_and_regulations/rates/rate_books
in the section on Summary of Gas Rates for 10/1/19.
</ul>
</p>
<p>
All <b>Other Price</b> profiles are:
<ul>
$0/kWh.
</ul>
</p>
<h4>Emission Factors</h4>
<p>
The <b>Electricity Emissions Factor</b> profile is:
<ul>
Based on the average electricity generation mix for CO,USA for the year of
2017.  It is 0.6618 kgCO2/kWh (1459 lbsCO2/MWh).
For reference,
see https://www.eia.gov/electricity/state/colorado/.
</ul>
</p>
<p>
The <b>Gas Emissions Factor</b> profile is:
<ul>
Based on the kgCO2 emitted per amount of natural gas burned in terms of 
energy content.  It is 0.18108 kgCO2/kWh (53.07 kgCO2/milBTU).
For reference,
see https://www.eia.gov/environment/emissions/co2_vol_mass.php.
</ul>
</p>
<p>
All <b>Other Emissions Factor</b> profiles are:
<ul>
0 kgCO2/kWh.
</ul>
</p>
</html>",
revisions="<html>
<ul>
<li>
December 9, 2019, by David Blum:<br/>
Revised control, system sizing, and documentation.
</li>
<li>
November 13, 2019, by David Blum:<br/>
First implementation.
</li>
</ul>
</html>"));
end TestCase;
