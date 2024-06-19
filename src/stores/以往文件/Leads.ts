import { SearchVo} from '../utils/SearchVo';
export class  LeadsSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
};


export class LeadsVo {
  id = '';

  name = '';

  description = '';

  jobTitle = '';

  company = '';

  industry = '';

  website = '';

  email = '';

  phoneNumber = '';

  mobileNumber = '';

  faxNumber = '';

  remark = '';

  leadOwner = '';

  leadPool = '';

  campaign = '';

  source = '';

  streetRoad = '';

  city = '';

  ctate = '';

  postCode = '';

  country = '';

  isactived = '0';

  islocked = '0';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  createUid = '';

  updatedUid = '';

  satus = 'New';

  linkedIn = '';
}
