import { SearchVo} from '../utils/SearchVo';
export class  PaymentTermSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class PaymentTermVo {
  id = '';

  name = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
