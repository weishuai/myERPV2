import { SearchVo} from '../utils/SearchVo';
export class  WorkNoteSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class WorkNoteVo {
  id = '';

  workId = '';

  title = '';

  note = '';

  assignTo = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
