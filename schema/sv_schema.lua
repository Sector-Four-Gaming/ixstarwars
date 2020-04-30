-- Here is where all of your serverside functions should go.

ix.option.Add("resaleValue", ix.type.number, false, {
	category = "Selling",
	min = 0.0, max = 0.9,
	hidden = isHidden,
	OnChanged = function(oldValue, value)
		
	end
})