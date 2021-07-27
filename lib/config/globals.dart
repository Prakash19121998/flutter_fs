class Globals {
  static String token;
  // 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzAsInR5cGUiOiJjdXN0b21lciIsImlhdCI6MTYxNzk1ODQ3Mn0.KuxnvqiMJeIAvnz3sPxq0T2X850Av2BhLvMkMY_cGJs'; //without bills
  // 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyOCwidHlwZSI6ImN1c3RvbWVyIiwiaWF0IjoxNjE3OTU5MzI2fQ.hicewh49YjU0W-UbiCXetKTOAmtI4XSiykJ_14RzPUk'; //with bills
  // static int userid;
  // static String usertype = '';

  static dynamic headers() {
    return {
      "accept": "application/json",
      "content-type": "application/json",
      "Authorization": "Bearer ${Globals.token}"
    };
  }
}
