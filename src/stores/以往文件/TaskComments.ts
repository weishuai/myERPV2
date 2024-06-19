import { SearchVo} from '../utils/SearchVo';
export class  TaskCommentsSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class TaskCommentsVo {
  id = '';

  mid = '';

  subject = '';

  assignTo = '';

  note = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
