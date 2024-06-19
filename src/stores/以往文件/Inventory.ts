import { SearchVo} from '../utils/SearchVo';
export class  InventorySeatchVo extends SearchVo{
  condoId?: string;
  locationCategoryId?: string;
};


export class InventoryVo {
  id = '';

  subject = '';

  condoId = '';

  projectId = '';

  poDate?: Date;

  replacementDate?: Date;

  item = '';

  price = 0;

  warranty = '';

  description = '';

  remarks = '';

  locationItemName = '';

  locationCategoryName = '';

  locationItemId = '';

  locationCategoryId = '';

  warrantyValidityDate?: Date;

  notifyBeforeDays = 0;
}

export class OptionVo {
  name = '';

  code = '';
}
export class DroOptionVo {
  label = '';

  value = '';
}
export class LocationCategory {
  name = '';

  id = '';

  isInuse = 0;
}

export class LocationItem {
  name = '';

  id = '';
}
