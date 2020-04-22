
if data.raw.technology["se-thruster-suit"] ~= nil then

if data.raw.technology["se-thruster-suit"].prerequisites[1] == nil then

data.raw.technology["se-thruster-suit"].prerequisites =
	{
	"modular-armor",
    "rocket-silo",
    "se-space-lifesupport-facility"
	}
	
end

end