import '../models/diamond_model.dart';

abstract class DiamondDataSource {
  List<DiamondModel> getDiamonds();
}

class DiamondDataSourceImpl implements DiamondDataSource {
  @override
  List<DiamondModel> getDiamonds() {
    return diamondData; // Replace with your dataset
  }
}

// Sample data (replace with your 100 diamonds)
final List<DiamondModel> diamondData = [
  DiamondModel(
    lotId: 'D001',
    size: 1.0,
    carat: 0.5,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: 10.0,
    perCaratRate: 5000.0,
    finalAmount: 2250.0,
    keyToSymbol: 'Key1',
    labComment: 'Good quality',
  ),
  DiamondModel(
    lotId: '790185947',
    size: 0.90,
    carat: 0.90,
    lab: 'GIA',
    shape: 'BR',
    color: 'E',
    clarity: 'VVS2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -44.00,
    perCaratRate: 3864.00,
    finalAmount: 3477.60,
    keyToSymbol: 'Cloud, Indented Natural, Cavity, Natural',
    labComment: 'Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '490361405',
    size: 0.90,
    carat: 0.90,
    lab: 'GIA',
    shape: 'BR',
    color: 'G',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -41.00,
    perCaratRate: 3776.00,
    finalAmount: 3398.40,
    keyToSymbol: 'Pinpoint',
    labComment: '',
  ),
  DiamondModel(
    lotId: '790367521',
    size: 1.00,
    carat: 1.00,
    lab: 'GIA',
    shape: 'BR',
    color: 'F',
    clarity: 'VVS2',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Good',
    fluorescence: 'Medium',
    discount: -58.98,
    perCaratRate: 3445.68,
    finalAmount: 3445.68,
    keyToSymbol: 'Cloud, Pinpoint, Indented Natural',
    labComment:
        'Additional pinpoints are not shown. Surface graining is not shown.',
  ),
  DiamondModel(
    lotId: '490361912',
    size: 1.00,
    carat: 1.00,
    lab: 'GIA',
    shape: 'BR',
    color: 'H',
    clarity: 'VVS2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -41.00,
    perCaratRate: 3245.00,
    finalAmount: 3245.00,
    keyToSymbol: 'Needle, Pinpoint, Indented Natural, Natural',
    labComment: 'Additional pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '790386188',
    size: 1.00,
    carat: 1.01,
    lab: 'GIA',
    shape: 'BR',
    color: 'F',
    clarity: 'VS1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -49.12,
    perCaratRate: 3663.36,
    finalAmount: 3699.99,
    keyToSymbol: 'Crystal, Needle',
    labComment: 'Pinpoints are not shown. Clouds are not shown.',
  ),
  DiamondModel(
    lotId: '21287670',
    size: 1.00,
    carat: 1.01,
    lab: 'In-House',
    shape: 'BR',
    color: 'G',
    clarity: 'I1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -48.42,
    perCaratRate: 1598.98,
    finalAmount: 1614.97,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '790146218',
    size: 1.00,
    carat: 1.20,
    lab: 'GIA',
    shape: 'BR',
    color: 'G',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -41.48,
    perCaratRate: 3628.24,
    finalAmount: 4353.89,
    keyToSymbol: 'Crystal, Cloud, Needle',
    labComment: 'Additional clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '900066231',
    size: 1.00,
    carat: 1.44,
    lab: 'In-House',
    shape: 'BR',
    color: 'F',
    clarity: 'VS2',
    cut: 'Good',
    polish: 'Good',
    symmetry: 'Good',
    fluorescence: 'Medium',
    discount: -94.00,
    perCaratRate: 402.00,
    finalAmount: 578.88,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900061985',
    size: 1.00,
    carat: 1.46,
    lab: 'In-House',
    shape: 'BR',
    color: 'H',
    clarity: 'VS2',
    cut: 'Good',
    polish: 'Good',
    symmetry: 'Good',
    fluorescence: 'Medium',
    discount: -94.00,
    perCaratRate: 324.00,
    finalAmount: 473.04,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490345395',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'FL',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -18.00,
    perCaratRate: 2296.00,
    finalAmount: 688.80,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490370762',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -35.00,
    perCaratRate: 1560.00,
    finalAmount: 468.00,
    keyToSymbol: 'Pinpoint',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1712094',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Very Good',
    polish: 'Very Good',
    symmetry: 'Excellent',
    fluorescence: 'Medium',
    discount: -52.50,
    perCaratRate: 1140.00,
    finalAmount: 342.00,
    keyToSymbol: 'Cavity, Feather, Indented Natural',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900057394',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -38.00,
    perCaratRate: 1488.00,
    finalAmount: 446.40,
    keyToSymbol: 'Pinpoint, Feather',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900055819',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -38.00,
    perCaratRate: 1488.00,
    finalAmount: 446.40,
    keyToSymbol: 'Pinpoint',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1706382',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Very Good',
    polish: 'Very Good',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -48.00,
    perCaratRate: 1248.00,
    finalAmount: 374.40,
    keyToSymbol: 'Pinpoint, Feather, Chip',
    labComment: '',
  ),
  DiamondModel(
    lotId: '290135752',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -48.50,
    perCaratRate: 1236.00,
    finalAmount: 370.80,
    keyToSymbol: 'Pinpoint, Feather',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490250218',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -47.50,
    perCaratRate: 1260.00,
    finalAmount: 378.00,
    keyToSymbol: 'Pinpoint, Feather',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490167040',
    size: 0.30,
    carat: 0.30,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -47.50,
    perCaratRate: 1260.00,
    finalAmount: 378.00,
    keyToSymbol: 'Pinpoint, Feather',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900066356',
    size: 0.18,
    carat: 0.18,
    lab: 'In-House',
    shape: 'BR',
    color: 'D',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -37.67,
    perCaratRate: 785.36,
    finalAmount: 141.36,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900064899',
    size: 0.18,
    carat: 0.18,
    lab: 'In-House',
    shape: 'BR',
    color: 'D',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -37.67,
    perCaratRate: 785.36,
    finalAmount: 141.36,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900067131',
    size: 0.23,
    carat: 0.23,
    lab: 'In-House',
    shape: 'BR',
    color: 'D',
    clarity: 'SI2',
    cut: 'Very Good',
    polish: 'Very Good',
    symmetry: 'Very Good',
    fluorescence: 'Medium',
    discount: -37.28,
    perCaratRate: 683.65,
    finalAmount: 157.24,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900066716',
    size: 0.23,
    carat: 0.23,
    lab: 'In-House',
    shape: 'BR',
    color: 'E',
    clarity: 'SI2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -37.28,
    perCaratRate: 683.65,
    finalAmount: 157.24,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900062564',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -41.00,
    perCaratRate: 32450.00,
    finalAmount: 97674.50,
    keyToSymbol: '',
    labComment: 'Minor details of polish are not shown.',
  ),
  DiamondModel(
    lotId: '900065188',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -39.00,
    perCaratRate: 28060.00,
    finalAmount: 84460.60,
    keyToSymbol: 'Pinpoint',
    labComment: 'Additional pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '290187276',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -43.00,
    perCaratRate: 26220.00,
    finalAmount: 78922.20,
    keyToSymbol: 'Pinpoint, Needle',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900061478',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'BR',
    color: 'D',
    clarity: 'VVS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -38.00,
    perCaratRate: 28520.00,
    finalAmount: 85845.20,
    keyToSymbol: 'Feather',
    labComment: '',
  ),
  DiamondModel(
    lotId: '21214039',
    size: 2.00,
    carat: 2.00,
    lab: 'GIA',
    shape: 'BR',
    color: 'H',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -38.00,
    perCaratRate: 7750.00,
    finalAmount: 15500.00,
    keyToSymbol: 'Cloud, Crystal, Feather, Needle, Natural',
    labComment: 'Additional clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '21269689',
    size: 2.00,
    carat: 2.00,
    lab: 'GIA',
    shape: 'BR',
    color: 'H',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -34.00,
    perCaratRate: 8250.00,
    finalAmount: 16500.00,
    keyToSymbol: 'Crystal, Cloud, Indented Natural, Natural',
    labComment:
        'Additional clouds, pinpoints and surface graining are not shown.',
  ),
  DiamondModel(
    lotId: '112209404',
    size: 2.00,
    carat: 2.00,
    lab: 'GIA',
    shape: 'BR',
    color: 'H',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -39.00,
    perCaratRate: 7625.00,
    finalAmount: 15250.00,
    keyToSymbol: 'Crystal, Indented Natural, Needle, Natural',
    labComment: 'Clouds, pinpoints and surface graining are not shown.',
  ),
  DiamondModel(
    lotId: '900064418',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'BR',
    color: 'F',
    clarity: 'SI1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Medium',
    discount: -51.00,
    perCaratRate: 6027.00,
    finalAmount: 12114.27,
    keyToSymbol: 'Crystal, Twinning Wisp, Feather, Needle, Indented Natural',
    labComment:
        'Additional twinning wisps, pinpoints and surface graining are not shown.',
  ),
  DiamondModel(
    lotId: '1709323',
    size: 2.00,
    carat: 2.54,
    lab: 'HRD',
    shape: 'BR',
    color: 'F',
    clarity: 'SI2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -48.00,
    perCaratRate: 5096.00,
    finalAmount: 12943.84,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '21126224',
    size: 3.00,
    carat: 3.02,
    lab: 'In-House',
    shape: 'BR',
    color: 'H',
    clarity: 'I1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Medium',
    discount: -56.98,
    perCaratRate: 3527.64,
    finalAmount: 10653.47,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '21155574',
    size: 3.00,
    carat: 3.05,
    lab: 'In-House',
    shape: 'BR',
    color: 'H',
    clarity: 'I1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -56.98,
    perCaratRate: 3527.64,
    finalAmount: 10759.30,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '911036108',
    size: 2.00,
    carat: 2.00,
    lab: 'GIA',
    shape: 'CU', // 'CU' → 'Cushion'
    color: 'G',
    clarity: 'VS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -47.00,
    perCaratRate: 7420.00,
    finalAmount: 14840.00,
    keyToSymbol: '',
    labComment: 'Clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '290053887',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'CU',
    color: 'E',
    clarity: 'VVS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -52.86,
    perCaratRate: 8720.90,
    finalAmount: 17529.01,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900691763',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'CU',
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -60.59,
    perCaratRate: 5123.30,
    finalAmount: 10297.83,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900691769',
    size: 3.00,
    carat: 3.00,
    lab: 'GIA',
    shape: 'CU',
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -56.00,
    perCaratRate: 9020.00,
    finalAmount: 27060.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '911036111',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'CU',
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -40.00,
    perCaratRate: 12300.00,
    finalAmount: 37023.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '290035976',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'CU',
    color: 'H',
    clarity: 'VS1',
    cut: '',
    polish: 'Very Good',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -58.00,
    perCaratRate: 8190.00,
    finalAmount: 24651.90,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '911036101',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'EM', // 'EM' → 'Emerald'
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -52.00,
    perCaratRate: 12542.40,
    finalAmount: 25210.22,
    keyToSymbol: '',
    labComment: 'Additional clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '20289242',
    size: 2.00,
    carat: 2.07,
    lab: 'GIA',
    shape: 'EM',
    color: 'D',
    clarity: 'VVS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -55.05,
    perCaratRate: 8990.00,
    finalAmount: 18609.30,
    keyToSymbol: '',
    labComment:
        'Internal graining is not shown. Surface graining is not shown.',
  ),
  DiamondModel(
    lotId: '290114652',
    size: 2.00,
    carat: 2.82,
    lab: 'GIA',
    shape: 'EM',
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -35.00,
    perCaratRate: 8450.00,
    finalAmount: 23829.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '911026173',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'EM',
    color: 'F',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Very Strong', // 'VST' → 'Very Strong'
    discount: -65.00,
    perCaratRate: 7875.00,
    finalAmount: 23703.75,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '911035850',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'EM',
    color: 'F',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -45.00,
    perCaratRate: 12375.00,
    finalAmount: 37248.75,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '290157034',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'EM',
    color: 'F',
    clarity: 'SI1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -46.00,
    perCaratRate: 10530.00,
    finalAmount: 31695.30,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '911024106',
    size: 3.00,
    carat: 3.02,
    lab: 'GIA',
    shape: 'EM',
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -50.00,
    perCaratRate: 10250.00,
    finalAmount: 30955.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '7513951',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'MQ', // 'MQ' → 'Marquise'
    color: 'D',
    clarity: 'VVS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -35.41,
    perCaratRate: 11949.15,
    finalAmount: 24017.79,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900045732',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'OV', // 'OV' → 'Oval'
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Very Good',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -41.00,
    perCaratRate: 7670.00,
    finalAmount: 15416.70,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900779752',
    size: 2.00,
    carat: 2.68,
    lab: 'GIA',
    shape: 'OV',
    color: 'E',
    clarity: 'VS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -32.00,
    perCaratRate: 10880.00,
    finalAmount: 29158.40,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900579422',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'OV',
    color: 'G',
    clarity: 'SI1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -40.00,
    perCaratRate: 10800.00,
    finalAmount: 32508.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '901000037',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'OV',
    color: 'H',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -41.00,
    perCaratRate: 10620.00,
    finalAmount: 31966.20,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '290186284',
    size: 3.00,
    carat: 3.02,
    lab: 'GIA',
    shape: 'OV',
    color: 'F',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -40.00,
    perCaratRate: 9300.00,
    finalAmount: 28086.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '290115870',
    size: 2.00,
    carat: 2.50,
    lab: 'GIA',
    shape: 'PR', // 'PR' → 'Princess'
    color: 'E',
    clarity: 'VS2',
    cut: '',
    polish: 'Very Good',
    symmetry: 'Good',
    fluorescence: 'None',
    discount: -51.00,
    perCaratRate: 7350.00,
    finalAmount: 18375.00,
    keyToSymbol: '',
    labComment: 'Clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '900723209',
    size: 2.00,
    carat: 2.01,
    lab: 'GIA',
    shape: 'PS', // 'PS' → 'Pear'
    color: 'F',
    clarity: 'VVS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -37.00,
    perCaratRate: 10080.00,
    finalAmount: 20260.80,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900622172',
    size: 0.50,
    carat: 0.50,
    lab: 'GIA',
    shape: 'OV',
    color: 'E',
    clarity: 'VS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -51.30,
    perCaratRate: 1217.50,
    finalAmount: 608.75,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900622170',
    size: 0.50,
    carat: 0.50,
    lab: 'GIA',
    shape: 'OV',
    color: 'E',
    clarity: 'VS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -48.07,
    perCaratRate: 1298.25,
    finalAmount: 649.13,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900622171',
    size: 0.50,
    carat: 0.50,
    lab: 'GIA',
    shape: 'OV',
    color: 'E',
    clarity: 'SI1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -56.00,
    perCaratRate: 924.00,
    finalAmount: 462.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900691721',
    size: 0.50,
    carat: 0.50,
    lab: 'GIA',
    shape: 'OV',
    color: 'G',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -48.45,
    perCaratRate: 1082.55,
    finalAmount: 541.28,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900622186',
    size: 0.50,
    carat: 0.59,
    lab: 'GIA',
    shape: 'OV',
    color: 'E',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -51.00,
    perCaratRate: 1127.00,
    finalAmount: 664.93,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900691730',
    size: 0.70,
    carat: 0.70,
    lab: 'GIA',
    shape: 'OV',
    color: 'F',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -51.58,
    perCaratRate: 1452.60,
    finalAmount: 1016.82,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900691734',
    size: 0.70,
    carat: 0.70,
    lab: 'GIA',
    shape: 'OV',
    color: 'G',
    clarity: 'VS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -46.92,
    perCaratRate: 1645.48,
    finalAmount: 1151.84,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900691737',
    size: 0.70,
    carat: 0.70,
    lab: 'GIA',
    shape: 'OV',
    color: 'G',
    clarity: 'SI1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Faint',
    discount: -48.77,
    perCaratRate: 1127.06,
    finalAmount: 788.94,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900622198',
    size: 0.70,
    carat: 0.70,
    lab: 'GIA',
    shape: 'OV',
    color: 'I',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -44.42,
    perCaratRate: 1222.76,
    finalAmount: 855.93,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900478081',
    size: 0.70,
    carat: 0.80,
    lab: 'GIA',
    shape: 'OV',
    color: 'J',
    clarity: 'SI1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -37.41,
    perCaratRate: 1064.03,
    finalAmount: 851.22,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490070471',
    size: 1.00,
    carat: 1.01,
    lab: 'GIA',
    shape: 'PS',
    color: 'G',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -46.55,
    perCaratRate: 1763.85,
    finalAmount: 1781.49,
    keyToSymbol: '',
    labComment: 'Clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '290168948',
    size: 3.00,
    carat: 3.01,
    lab: 'GIA',
    shape: 'RAD', // 'RAD' → 'Radiant'
    color: 'G',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -56.00,
    perCaratRate: 6380.00,
    finalAmount: 19203.80,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '790339140',
    size: 1.50,
    carat: 1.70,
    lab: 'GIA',
    shape: 'BR',
    color: 'K',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -48.00,
    perCaratRate: 2444.00,
    finalAmount: 4154.80,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '790377407',
    size: 0.90,
    carat: 0.92,
    lab: 'GIA',
    shape: 'PS',
    color: 'D',
    clarity: 'VS2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -40.77,
    perCaratRate: 2606.12,
    finalAmount: 2397.63,
    keyToSymbol: '',
    labComment: 'Clouds, pinpoints and surface graining are not shown.',
  ),
  DiamondModel(
    lotId: '7482482',
    size: 1.00,
    carat: 1.01,
    lab: 'GIA',
    shape: 'PS',
    color: 'I',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -52.50,
    perCaratRate: 1330.00,
    finalAmount: 1343.30,
    keyToSymbol: '',
    labComment: 'Clouds, pinpoints and surface graining are not shown.',
  ),
  DiamondModel(
    lotId: '490017318',
    size: 5.00,
    carat: 5.01,
    lab: 'GIA',
    shape: 'RAD',
    color: 'H',
    clarity: 'VS1',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Faint',
    discount: -50.71,
    perCaratRate: 16512.15,
    finalAmount: 82725.87,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '17463537',
    size: 3.00,
    carat: 3.19,
    lab: 'GIA',
    shape: 'PS',
    color: 'D',
    clarity: 'SI1',
    cut: '',
    polish: 'Very Good',
    symmetry: 'Good',
    fluorescence: 'Faint',
    discount: -71.00,
    perCaratRate: 6670.00,
    finalAmount: 21277.30,
    keyToSymbol: '',
    labComment:
        'Additional twinning, pinpoints, surface graining and additional extra facets are not shown.',
  ),
  DiamondModel(
    lotId: '21230187',
    size: 1.00,
    carat: 1.00,
    lab: 'HRD',
    shape: 'BR',
    color: 'F',
    clarity: 'SI2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -54.00,
    perCaratRate: 1840.00,
    finalAmount: 1840.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '21235183',
    size: 1.00,
    carat: 1.00,
    lab: 'HRD',
    shape: 'BR',
    color: 'F',
    clarity: 'SI2',
    cut: 'Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -64.00,
    perCaratRate: 1512.00,
    finalAmount: 1512.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '7522163',
    size: 1.00,
    carat: 1.00,
    lab: 'HRD',
    shape: 'BR',
    color: 'M',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -50.09,
    perCaratRate: 1147.93,
    finalAmount: 1147.93,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '21240435',
    size: 1.00,
    carat: 1.01,
    lab: 'HRD',
    shape: 'BR',
    color: 'F',
    clarity: 'SI2',
    cut: 'Very Good',
    polish: 'Very Good',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -59.00,
    perCaratRate: 1722.00,
    finalAmount: 1739.22,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1691633',
    size: 1.00,
    carat: 1.20,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -49.84,
    perCaratRate: 3059.76,
    finalAmount: 3671.71,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490171786',
    size: 1.00,
    carat: 1.20,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -49.84,
    perCaratRate: 3059.76,
    finalAmount: 3671.71,
    keyToSymbol: '',
    labComment: 'Minor details of polish are not shown.',
  ),
  DiamondModel(
    lotId: '1700572',
    size: 1.00,
    carat: 1.21,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -50.89,
    perCaratRate: 2995.71,
    finalAmount: 3624.81,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1672088',
    size: 1.00,
    carat: 1.25,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -49.84,
    perCaratRate: 3059.76,
    finalAmount: 3824.70,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490142601',
    size: 1.00,
    carat: 1.31,
    lab: 'HRD',
    shape: 'BR',
    color: 'G',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -52.00,
    perCaratRate: 3936.00,
    finalAmount: 5156.16,
    keyToSymbol: '',
    labComment: 'minor graining',
  ),
  DiamondModel(
    lotId: '490297520',
    size: 1.50,
    carat: 1.50,
    lab: 'HRD',
    shape: 'BR',
    color: 'M',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -53.00,
    perCaratRate: 1692.00,
    finalAmount: 2538.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490267195',
    size: 1.50,
    carat: 1.70,
    lab: 'HRD',
    shape: 'BR',
    color: 'L',
    clarity: 'VS1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Slight', // 'SLT' → 'Slight'
    discount: -54.00,
    perCaratRate: 1840.00,
    finalAmount: 3128.00,
    keyToSymbol: 'Cloud, Needle, Indented Natural, Natural',
    labComment: 'Additional clouds are not shown. Pinpoints are not shown.',
  ),
  DiamondModel(
    lotId: '290148072',
    size: 1.50,
    carat: 1.80,
    lab: 'HRD',
    shape: 'BR',
    color: 'L',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Strong', // 'STG' → 'Strong'
    discount: -54.00,
    perCaratRate: 1840.00,
    finalAmount: 3312.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1673222',
    size: 1.50,
    carat: 1.80,
    lab: 'HRD',
    shape: 'BR',
    color: 'M',
    clarity: 'VS2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -47.00,
    perCaratRate: 1802.00,
    finalAmount: 3243.60,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '490296096',
    size: 1.50,
    carat: 1.80,
    lab: 'HRD',
    shape: 'BR',
    color: 'M',
    clarity: 'VS2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -48.00,
    perCaratRate: 1768.00,
    finalAmount: 3182.40,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1682094',
    size: 2.00,
    carat: 2.01,
    lab: 'HRD',
    shape: 'BR',
    color: 'K',
    clarity: 'SI1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -56.00,
    perCaratRate: 2508.00,
    finalAmount: 5041.08,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '21245651',
    size: 2.00,
    carat: 2.03,
    lab: 'HRD',
    shape: 'BR',
    color: 'K',
    clarity: 'SI1',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -58.00,
    perCaratRate: 2394.00,
    finalAmount: 4859.82,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '7537173',
    size: 2.00,
    carat: 2.80,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'IF',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -36.00,
    perCaratRate: 10560.00,
    finalAmount: 29568.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1709599',
    size: 3.00,
    carat: 3.00,
    lab: 'HRD',
    shape: 'BR',
    color: 'G',
    clarity: 'SI2',
    cut: 'Good',
    polish: 'Very Good',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -58.40,
    perCaratRate: 3203.20,
    finalAmount: 9609.60,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '445298427',
    size: 3.00,
    carat: 3.00,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'VVS2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -58.00,
    perCaratRate: 9450.00,
    finalAmount: 28350.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1709329',
    size: 3.00,
    carat: 3.01,
    lab: 'HRD',
    shape: 'BR',
    color: 'G',
    clarity: 'SI2',
    cut: 'Very Good',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -58.00,
    perCaratRate: 6510.00,
    finalAmount: 19595.10,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1706899',
    size: 3.00,
    carat: 3.03,
    lab: 'HRD',
    shape: 'BR',
    color: 'J',
    clarity: 'VVS2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -54.00,
    perCaratRate: 6900.00,
    finalAmount: 20907.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1696732',
    size: 3.00,
    carat: 3.50,
    lab: 'HRD',
    shape: 'BR',
    color: 'J',
    clarity: 'SI2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -46.00,
    perCaratRate: 5940.00,
    finalAmount: 20790.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900058991',
    size: 3.00,
    carat: 3.52,
    lab: 'HRD',
    shape: 'BR',
    color: 'D',
    clarity: 'SI2',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'Slight',
    discount: -51.00,
    perCaratRate: 9800.00,
    finalAmount: 34496.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1709601',
    size: 3.00,
    carat: 3.52,
    lab: 'HRD',
    shape: 'BR',
    color: 'H',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -51.00,
    perCaratRate: 10045.00,
    finalAmount: 35358.40,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900054495',
    size: 3.00,
    carat: 3.80,
    lab: 'HRD',
    shape: 'BR',
    color: 'K',
    clarity: 'VS1',
    cut: 'Excellent',
    polish: 'Excellent',
    symmetry: 'Excellent',
    fluorescence: 'None',
    discount: -46.00,
    perCaratRate: 6480.00,
    finalAmount: 24624.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '900057220',
    size: 3.00,
    carat: 3.02,
    lab: 'HRD',
    shape: 'HS', // 'HS' → 'Heart'
    color: 'H',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Slight',
    discount: -61.00,
    perCaratRate: 5265.00,
    finalAmount: 15900.30,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '1706907',
    size: 3.00,
    carat: 3.00,
    lab: 'HRD',
    shape: 'OV',
    color: 'F',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'Slight',
    discount: -56.00,
    perCaratRate: 6820.00,
    finalAmount: 20460.00,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '445568009',
    size: 0.90,
    carat: 0.90,
    lab: 'HRD',
    shape: 'PS',
    color: 'F',
    clarity: 'SI2',
    cut: '',
    polish: 'Excellent',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -52.00,
    perCaratRate: 1392.00,
    finalAmount: 1252.80,
    keyToSymbol: '',
    labComment: '',
  ),
  DiamondModel(
    lotId: '445376109',
    size: 1.00,
    carat: 1.00,
    lab: 'HRD',
    shape: 'PS',
    color: 'F',
    clarity: 'SI2',
    cut: '',
    polish: 'Very Good',
    symmetry: 'Very Good',
    fluorescence: 'None',
    discount: -58.00,
    perCaratRate: 1470.00,
    finalAmount: 1470.00,
    keyToSymbol: '',
    labComment: '',
  ),
  // Add your 100 diamonds here
];
