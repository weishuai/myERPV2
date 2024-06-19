import { SearchVo} from '../utils/SearchVo';
export class  TaskSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class TaskVo {
  id = '';

  subject = '';

  dueDate?: Date = new Date();

  collaborate1 = '';

  collaborate2 = '';

  relatedType = '';

  relatedTo = '';

  priority = '';

  status = '';

  comments = '';

  feedback = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
