import { SearchVo} from '../utils/SearchVo';
export class  ServiceContractSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class ServiceContractVo {
  id = '';

  currency = '';

  contractRef = '';

  createdBy = '';

  contractName = '';

  status = '';

  account = '';

  contractValues = '';

  startDate?: Date = new Date();

  endDate?: Date = new Date();

  sla = '';

  period = '';

  contractValue = '';

  clientPo = '';

  additionalField5 = '';

  termsConditions = '';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
