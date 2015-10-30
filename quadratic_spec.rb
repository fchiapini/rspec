require '/home/felipe/workspace/rspec/quadratic'

describe "Quadratic equation solver" do
	
	it "can take integers as arguments" do
		expect(quadratic(1, 2, 1)).to eq(-1.0)
	end
	
	it "can take floats as arguments" do
		expect(quadratic(1.0, 2.0, 1.0)).to eq(-1.0)
	end		 

	it "returns an empty solution set when appropriate" do
		expect(quadratic(2, 3, 9)).to eq([])
	end

	it "raises ArgumentError when for non-numeric coefficients" do
		expect { quadratic(3, 4, "foo") }.to raise_error(ArgumentError)
	end
end