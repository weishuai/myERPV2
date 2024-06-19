import { SearchVo} from '../utils/SearchVo';
export class  StaffListSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class StaffListVo {
  id = '';

  fullName = '';

  contactNo = '';

  email = '';

  role = '';

  clients = '';

  type = '';

  login = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
