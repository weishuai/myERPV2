import { SearchVo} from '../utils/SearchVo';
export class  JobSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class JobVo {
  id = '';

  title = '';

  wiType = '';

  clients = '';

  enabled = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
