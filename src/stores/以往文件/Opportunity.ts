import { SearchVo} from '../utils/SearchVo';
export class  OpportunitySearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
};


export class OpportunityVo {
  id = '';

  refNumber = '';

  priority = '';

  opportunityName = '';

  account = '';

  opportunityOwner = '';

  expiryDate?: Date = new Date();

  stageName = '';

  probability = '';

  currency = '0';

  dealAge = '0';

  closeProbabilitcloseProbability = '0';

  forecastValue = '0';

  expectedCloseDate?: Date = new Date();

  salesValue = '0';

  cost = '0';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
