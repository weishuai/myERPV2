
//import { List } from '../../src/views/Skill/SkillList';
"use client"
import React from 'react';
import { useTranslation } from 'react-i18next'
import { List } from '../../../src/views/Skill/SkillList';
export default function Page() {
  const { t, i18n } = useTranslation();
  
  return (
      <List  />
  );
}