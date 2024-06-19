import { SearchVo} from '../utils/SearchVo';
export class  ClientSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  accountsType?: '';
  mid?: '';
  mtable?: '';
};


export class ClientVo {
  id = '';

  description = '';

  accountTag = '';

  clientState = 'activation';

  accountsType = 'Accounts';

  name = '';

  type = '0';

  accountOwner = '';

  regNumber = '';

  industry = '';

  phoneNumber = '';

  website = '';

  faxNumber = '';

  street = '';

  city = '';

  state = '';

  postCode = '';

  country = '';

  don = '';

  ref = '';

  gender = '';

  dateBirth?: Date = new Date();

  language = '';

  income = '';

  marital = '';

  children = '';

  additionalField4 = '';

  additionalField5 = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
