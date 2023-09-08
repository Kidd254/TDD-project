require_relative '../solver/solver'

RSpec.describe Solver do
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

  describe '#reverse' do
    it 'returns the reversed string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'should returns "fizz" if the input is 3' do
      expect(Solver.fizzbuzz(3)).to eq('fizz')
    end

    it 'should returns "buzz" if the input is 5' do
      expect(Solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'should returns "fizzbuzz" if the input is 15' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should returns "2" if the input is 2' do
      expect(Solver.fizzbuzz(2)).to eq('2')
    end
  end
end
