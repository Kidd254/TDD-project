require_relative '../solver/solver'

describe Solver do
    let(:solver) { Solver.new }
  
    describe '#factorial' do
      it 'returns 1 when given 0' do
        expect(solver.factorial(0)).to eq(1)
      end
  
      it 'returns the correct factorial for a positive integer' do
        expect(solver.factorial(5)).to eq(120)
      end
  
      it 'raises an exception for a negative integer' do
        expect { solver.factorial(-2) }.to raise_error(ArgumentError)
      end
    end
end