import { SearchVo} from '../utils/SearchVo';
export class  JobItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  jobitemIDs?: '';
};

export class JobItemVo {
  id = '';

  mid = '';

  photo = '';

  step = '';

  title = '';

  template = '';

  require = '0';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
