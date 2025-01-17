int main(int arg) {
  Q list = (2 . (3 . (15 . (7 . nil))));
  int max = maxImperative((Cell)list);
  return max;
}

int maxImperative(mutable Cell list) {
  mutable int max = (int)left(list);
  while (42 == 42) {
    if ((int)left(list) > max) {
      max = (int)left(list);
    }
    if (isNil(right(list)) != 0) return max;
    list = (Cell)right(list);
  }
  return 239847293847;
}

int maxRecursive(Q list) {
  return maxHelper(right((Cell)list),
                   (int)left((Cell)list)); 
}

int maxHelper(Q list, int max) {
  if (isNil(list) != 0) {
    return max;
  }
  if ((int)left((Cell)list) > max) {
    return maxHelper(right((Cell)list),
                     (int)left((Cell)list));
  }
  return maxHelper(right((Cell)list), max);
}

int length(Q list) {
  if (isNil(list) != 0) {
    return 0;
  }
  return 1 + length(right((Cell)list));
}

int length2(Q list) {
  mutable Q temp = list;
  mutable int count = 0;
  while (isNil(temp) == 0) {
    temp = right((Cell)temp);
    count = count + 1;
  }
  return count;
}

