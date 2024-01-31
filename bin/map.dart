final openapiMap = {
  "swagger": "2.0",
  "x-stoplight": {"id": "xmulprojamrcd"},
  "info": {
    "version": "v4",
    "title": "Quran.com API",
    "description": " Documentation of Quran.com v4 API",
  },
  "host": "api.quran.com",
  "basePath": "/api/v4",
  "schemes": ["https"],
  "produces": ["application/json"],
  "paths": {
    "/chapter_recitations/{id}/{chapter_number}": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "The Id of the reciter",
          "required": true,
          "type": "number",
        },
        {
          "name": "chapter_number",
          "in": "path",
          "required": true,
          "type": "number",
          "minimum": 1,
          "maximum": 114,
          "description": "The number of the chapter",
        }
      ],
      "get": {
        "operationId": "chapter-reciter-audio-file",
        "summary": "Get chapter's audio file of a reciter",
        "description": "Get chapter's audio file of a reciter ",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_file": {r"$ref": "#/definitions/chapter-recitation"},
              },
            },
            "examples": {
              "application/json": {
                "audio_file": {
                  "id": 43,
                  "chapter_id": 22,
                  "file_size": 19779712,
                  "format": "mp3",
                  "total_files": 1,
                  "audio_url":
                      "https://download.quranicaudio.com/quran/abdullaah_3awwaad_al-juhaynee//022.mp3",
                },
              },
            },
          },
        },
        "tags": ["Audio"],
        "parameters": [],
      },
    },
    "/chapter_recitations/{id}": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "The Id of the reciter",
          "required": true,
          "type": "number",
        }
      ],
      "get": {
        "operationId": "chapter-reciter-audio-files",
        "summary": "List of all chapter audio files of a reciter",
        "tags": ["Audio"],
        "description": "Get list of chapters' audio files of a reciter",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "type": "string",
            "default": "en",
          },
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/chapter-recitation"},
                },
              },
              "required": ["audio_files"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "id": 43,
                    "chapter_id": 22,
                    "file_size": 19779712,
                    "format": "mp3",
                    "total_files": 1,
                    "audio_url":
                        "https://download.quranicaudio.com/quran/abdullaah_3awwaad_al-juhaynee//022.mp3",
                  },
                  {
                    "id": 87,
                    "chapter_id": 44,
                    "file_size": 6453376,
                    "format": "mp3",
                    "total_files": 1,
                    "audio_url":
                        "https://download.quranicaudio.com/quran/abdullaah_3awwaad_al-juhaynee//044.mp3",
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/chapters": {
      "get": {
        "operationId": "list-chapters",
        "summary": "List Chapters",
        "tags": ["Chapters"],
        "description": "Get list of #model:aC7ed7aoTAZEKLCGF.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "type": "string",
            "default": "en",
          },
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "chapters": {"type": "array", "items": {}},
              },
            },
            "examples": {
              "application/json": {
                "chapters": [
                  {
                    "id": 1,
                    "revelation_place": "makkah",
                    "revelation_order": 5,
                    "bismillah_pre": false,
                    "name_simple": "Al-Fatihah",
                    "name_complex": "Al-Fātiĥah",
                    "name_arabic": "الفاتحة",
                    "verses_count": 7,
                    "pages": [1, 1],
                    "translated_name": {
                      "language_name": "english",
                      "name": "The Opener",
                    },
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/chapters/{id}": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "Chapter ID ( 1-114)",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "maximum": 114,
        }
      ],
      "get": {
        "operationId": "GET-chapter",
        "summary": "Get Chapter",
        "tags": ["Chapters"],
        "description": "Get details of a single #model:aC7ed7aoTAZEKLCGF.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "type": "string",
            "default": "en",
          },
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "chapter": {r"$ref": "#/definitions/chapter"},
              },
            },
            "examples": {
              "application/json": {
                "chapter": {
                  "id": 1,
                  "revelation_place": "makkah",
                  "revelation_order": 5,
                  "bismillah_pre": false,
                  "name_simple": "Al-Fatihah",
                  "name_complex": "Al-Fātiĥah",
                  "name_arabic": "الفاتحة",
                  "verses_count": 7,
                  "pages": [1, 1],
                  "translated_name": {
                    "language_name": "english",
                    "name": "The Opener",
                  },
                },
              },
            },
          },
        },
      },
    },
    "/chapters/{chapter_id}/info": {
      "parameters": [
        {
          "name": "chapter_id",
          "in": "path",
          "description": "Chapter number ( 1-114 )",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "maximum": 114,
        }
      ],
      "get": {
        "operationId": "info",
        "summary": "Get Chapter Info",
        "tags": ["Chapters"],
        "description":
            "Get #model:wc8vsnXdQpa7bpWa4 in specific language. Default to `English`.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "type": "string",
            "default": "en",
          },
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "chapter_info": {r"$ref": "#/definitions/chapter-info"},
              },
            },
            "examples": {
              "application/json": {
                "chapter_info": {
                  "id": 1,
                  "chapter_id": 1,
                  "language_name": "english",
                  "short_text":
                      "This Surah is named Al-Fatihah because of its subject-matter. Fatihah is that which opens a subject or a book or any other thing. In other words, Al-Fatihah is a sort of preface.",
                  "source":
                      "Sayyid Abul Ala Maududi - Tafhim al-Qur'an - The Meaning of the Quran",
                  "text":
                      "<h2>Name</h2>\r\n<p>This Surah is named Al-Fatihah because of its subject-matter. Fatihah is that which opens a subject or a book or any other thing. In other words, Al-Fatihah is a sort of preface.</p>\r\n<h2>Period of Revelation</h2>...",
                },
              },
            },
          },
        },
      },
    },
    "/verses/by_chapter/{chapter_number}": {
      "parameters": [
        {
          "name": "chapter_number",
          "in": "path",
          "description": "Chapter number ( 1  - 114 )",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "maximum": 114,
        }
      ],
      "get": {
        "operationId": "verses-by_chapter_number",
        "summary": "By Chapter",
        "tags": ["Verses"],
        "description":
            "Get list of #model:J83wDRc48FrARPHBY(s) by Chapter / Surah number.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          },
          {
            "name": "page",
            "in": "query",
            "description": "For paginating within the result",
            "type": "integer",
            "default": 1,
          },
          {
            "name": "per_page",
            "in": "query",
            "description":
                "records per api call, you can get maximum 50 records. ",
            "type": "integer",
            "default": 10,
            "minimum": 1,
            "maximum": 50,
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/verse"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_number": 1,
                    "page_number": 1,
                    "verse_key": "1:1",
                    "juz_number": 1,
                    "hizb_number": 1,
                    "rub_el_hizb_number": 1,
                    "sajdah_type": null,
                    "sajdah_number": null,
                    "words": [
                      {
                        "id": 1,
                        "position": 1,
                        "audio_url": "wbw/001_001_001.mp3",
                        "char_type_name": "word",
                        "line_number": 2,
                        "page_number": 1,
                        "code_v1": "&#xfb51;",
                        "translation": {
                          "text": "In (the) name",
                          "language_name": "english",
                        },
                        "transliteration": {
                          "text": "bis'mi",
                          "language_name": "english",
                        },
                      }
                    ],
                    "translations": [
                      {
                        "resource_id": 131,
                        "text":
                            "In the Name of Allah—the Most Compassionate, Most Merciful.",
                      }
                    ],
                    "tafsirs": [
                      {
                        "id": 82641,
                        "language_name": "english",
                        "name": "Tafsir Ibn Kathir",
                        "text":
                            "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                      }
                    ],
                  }
                ],
                "pagination": {
                  "per_page": 1,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 7,
                  "total_records": 7,
                },
              },
            },
          },
        },
      },
    },
    "/verses/by_page/{page_number}": {
      "parameters": [
        {
          "name": "page_number",
          "in": "path",
          "description": "Madani Mushaf page number. Valid range is 1-604 ",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "exclusiveMinimum": true,
          "maximum": 604,
          "exclusiveMaximum": false,
        }
      ],
      "get": {
        "operationId": "verses-by_page_number",
        "summary": "By Page",
        "tags": ["Verses"],
        "description":
            "Get all verses of a specific Madani Mushaf page(1 to 604)",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          },
          {
            "name": "page",
            "in": "query",
            "description": "For paginating within the result",
            "type": "integer",
            "default": 1,
          },
          {
            "name": "per_page",
            "in": "query",
            "description":
                "records per api call, you can get maximum 50 records. ",
            "type": "integer",
            "default": 10,
            "minimum": 1,
            "maximum": 50,
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/verse"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_number": 1,
                    "page_number": 1,
                    "verse_key": "1:1",
                    "juz_number": 1,
                    "hizb_number": 1,
                    "rub_el_hizb_number": 1,
                    "sajdah_type": null,
                    "sajdah_number": null,
                    "words": [
                      {
                        "id": 1,
                        "position": 1,
                        "audio_url": "wbw/001_001_001.mp3",
                        "char_type_name": "word",
                        "line_number": 2,
                        "page_number": 1,
                        "code_v1": "&#xfb51;",
                        "translation": {
                          "text": "In (the) name",
                          "language_name": "english",
                        },
                        "transliteration": {
                          "text": "bis'mi",
                          "language_name": "english",
                        },
                      }
                    ],
                    "translations": [
                      {
                        "resource_id": 131,
                        "text":
                            "In the Name of Allah—the Most Compassionate, Most Merciful.",
                      }
                    ],
                    "tafsirs": [
                      {
                        "id": 82641,
                        "language_name": "english",
                        "name": "Tafsir Ibn Kathir",
                        "text":
                            "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                      }
                    ],
                  }
                ],
                "pagination": {
                  "per_page": 1,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 7,
                  "total_records": 7,
                },
              },
            },
          },
        },
      },
    },
    "/verses/by_juz/{juz_number}": {
      "parameters": [
        {
          "name": "juz_number",
          "in": "path",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "maximum": 30,
        }
      ],
      "get": {
        "operationId": "verses-by_juz_number",
        "summary": "By Juz",
        "tags": ["Verses"],
        "description": "Get all verses from a specific juz(1-30).",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          },
          {
            "name": "page",
            "in": "query",
            "description": "For paginating within the result",
            "type": "integer",
            "default": 1,
          },
          {
            "name": "per_page",
            "in": "query",
            "description":
                "records per api call, you can get maximum 50 records. ",
            "type": "integer",
            "default": 10,
            "minimum": 1,
            "maximum": 50,
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/verse"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_number": 1,
                    "page_number": 1,
                    "verse_key": "1:1",
                    "juz_number": 1,
                    "hizb_number": 1,
                    "rub_el_hizb_number": 1,
                    "sajdah_type": null,
                    "sajdah_number": null,
                    "words": [
                      {
                        "id": 1,
                        "position": 1,
                        "audio_url": "wbw/001_001_001.mp3",
                        "char_type_name": "word",
                        "line_number": 2,
                        "page_number": 1,
                        "code_v1": "&#xfb51;",
                        "translation": {
                          "text": "In (the) name",
                          "language_name": "english",
                        },
                        "transliteration": {
                          "text": "bis'mi",
                          "language_name": "english",
                        },
                      }
                    ],
                    "translations": [
                      {
                        "resource_id": 131,
                        "text":
                            "In the Name of Allah—the Most Compassionate, Most Merciful.",
                      }
                    ],
                    "tafsirs": [
                      {
                        "id": 82641,
                        "language_name": "english",
                        "name": "Tafsir Ibn Kathir",
                        "text":
                            "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                      }
                    ],
                  }
                ],
                "pagination": {
                  "per_page": 1,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 7,
                  "total_records": 7,
                },
              },
            },
          },
        },
      },
    },
    "/verses/by_hizb/{hizb_number}": {
      "parameters": [
        {
          "name": "hizb_number",
          "in": "path",
          "description": "Hizb number(1-60)",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "maximum": 60,
        }
      ],
      "get": {
        "operationId": "verses-by_hizb_number",
        "summary": "By Hizb number",
        "tags": ["Verses"],
        "description": "Get all verses from a specific Hizb( half(1-60).",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          },
          {
            "name": "page",
            "in": "query",
            "description": "For paginating within the result",
            "type": "integer",
            "default": 1,
          },
          {
            "name": "per_page",
            "in": "query",
            "description":
                "records per api call, you can get maximum 50 records. ",
            "type": "integer",
            "default": 10,
            "minimum": 1,
            "maximum": 50,
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/verse"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_number": 1,
                    "page_number": 1,
                    "verse_key": "1:1",
                    "juz_number": 1,
                    "hizb_number": 1,
                    "rub_el_hizb_number": 1,
                    "sajdah_type": null,
                    "sajdah_number": null,
                    "words": [
                      {
                        "id": 1,
                        "position": 1,
                        "audio_url": "wbw/001_001_001.mp3",
                        "char_type_name": "word",
                        "line_number": 2,
                        "page_number": 1,
                        "code_v1": "&#xfb51;",
                        "translation": {
                          "text": "In (the) name",
                          "language_name": "english",
                        },
                        "transliteration": {
                          "text": "bis'mi",
                          "language_name": "english",
                        },
                      }
                    ],
                    "translations": [
                      {
                        "resource_id": 131,
                        "text":
                            "In the Name of Allah—the Most Compassionate, Most Merciful.",
                      }
                    ],
                    "tafsirs": [
                      {
                        "id": 82641,
                        "language_name": "english",
                        "name": "Tafsir Ibn Kathir",
                        "text":
                            "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                      }
                    ],
                  }
                ],
                "pagination": {
                  "per_page": 1,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 7,
                  "total_records": 7,
                },
              },
            },
          },
        },
      },
    },
    "/verses/by_rub/{rub_el_hizb_number}": {
      "parameters": [
        {
          "name": "rub_el_hizb_number",
          "in": "path",
          "description": "Rub el Hizb number(1-240)",
          "required": true,
          "type": "integer",
          "minimum": 1,
          "maximum": 240,
        }
      ],
      "get": {
        "operationId": "verses-by_rub_el_hizb_number",
        "summary": "By Rub el Hizb number",
        "tags": ["Verses"],
        "description":
            "Get all verses of a specific Rub el Hizb number(1-240).",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/verse"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_number": 1,
                    "page_number": 1,
                    "verse_key": "1:1",
                    "juz_number": 1,
                    "hizb_number": 1,
                    "rub_el_hizb_number": 1,
                    "sajdah_type": null,
                    "sajdah_number": null,
                    "words": [
                      {
                        "id": 1,
                        "position": 1,
                        "audio_url": "wbw/001_001_001.mp3",
                        "char_type_name": "word",
                        "line_number": 2,
                        "page_number": 1,
                        "code_v1": "&#xfb51;",
                        "translation": {
                          "text": "In (the) name",
                          "language_name": "english",
                        },
                        "transliteration": {
                          "text": "bis'mi",
                          "language_name": "english",
                        },
                      }
                    ],
                    "translations": [
                      {
                        "resource_id": 131,
                        "text":
                            "In the Name of Allah—the Most Compassionate, Most Merciful.",
                      }
                    ],
                    "tafsirs": [
                      {
                        "id": 82641,
                        "language_name": "english",
                        "name": "Tafsir Ibn Kathir",
                        "text":
                            "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                      }
                    ],
                  }
                ],
                "pagination": {
                  "per_page": 1,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 7,
                  "total_records": 7,
                },
              },
            },
          },
        },
      },
    },
    "/verses/by_key/{verse_key}": {
      "parameters": [
        {
          "name": "verse_key",
          "in": "path",
          "description": "Verse key ( chapter:verse) ",
          "required": true,
          "type": "string",
        }
      ],
      "get": {
        "operationId": "verses-by_verse_key",
        "summary": "By Specific Verse By Key",
        "tags": ["Verses"],
        "description":
            "Get a specific ayah with key. Key is combination of surah number and ayah number. 1:1 is first ayah offirst surah for exampke.\n\n10:5 is 5th ayah of 10th surah.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verse": {r"$ref": "#/definitions/verse"},
              },
              "required": ["verse"],
            },
            "examples": {
              "application/json": {
                "verse": {
                  "id": 1,
                  "verse_number": 1,
                  "page_number": 1,
                  "verse_key": "1:1",
                  "juz_number": 1,
                  "hizb_number": 1,
                  "rub_el_hizb_number": 1,
                  "sajdah_type": null,
                  "sajdah_number": null,
                  "words": [
                    {
                      "id": 1,
                      "position": 1,
                      "audio_url": "wbw/001_001_001.mp3",
                      "char_type_name": "word",
                      "line_number": 2,
                      "page_number": 1,
                      "code_v1": "&#xfb51;",
                      "translation": {
                        "text": "In (the) name",
                        "language_name": "english",
                      },
                      "transliteration": {
                        "text": "bis'mi",
                        "language_name": "english",
                      },
                    }
                  ],
                  "translations": [
                    {
                      "resource_id": 131,
                      "text":
                          "In the Name of Allah—the Most Compassionate, Most Merciful.",
                    }
                  ],
                  "tafsirs": [
                    {
                      "id": 82641,
                      "language_name": "english",
                      "name": "Tafsir Ibn Kathir",
                      "text":
                          "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                    }
                  ],
                },
              },
            },
          },
        },
      },
    },
    "/verses/random": {
      "get": {
        "operationId": "random_verse",
        "summary": "Get random ayah",
        "tags": ["Verses"],
        "description":
            "Get a random verse. You can get random verse from a specific `chapter`,`page`, `juz`, `hizb`, `rub-el-hizb`, `ruku`, `manzil`, or from whole Quran.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Language to fetch word translation in specific language.",
            "type": "string",
            "default": "en",
          },
          {
            "name": "words",
            "in": "query",
            "description":
                "Include words of each ayah? \n\n0 or false will not include words.\n\n1 or true will include the words.",
            "type": "string",
            "default": true,
            "enum": [true, false],
          },
          {
            "name": "translations",
            "in": "query",
            "description":
                "comma separated ids of translations to load for each ayah.",
            "type": "string",
          },
          {
            "name": "audio",
            "in": "query",
            "description":
                "Id of recitation if you want to load audio of each ayah.",
            "type": "integer",
          },
          {
            "name": "tafsirs",
            "in": "query",
            "description":
                "Comma separated ids of tafisrs to load for each ayah if you want to load tafisrs.",
            "type": "string",
          },
          {
            "name": "word_fields",
            "in": "query",
            "description":
                "Comma separated list of word fields if you want to add more fields for each word. ",
            "type": "string",
          },
          {
            "name": "translation_fields",
            "in": "query",
            "description":
                "Comma separated list of translation fields if you want to add more fields for each translation. ",
            "type": "string",
          },
          {
            "name": "fields",
            "in": "query",
            "description": "comma separated  list of ayah fields.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verse": {r"$ref": "#/definitions/verse"},
              },
              "required": ["verse"],
            },
            "examples": {
              "application/json": {
                "verse": {
                  "id": 1,
                  "verse_number": 1,
                  "page_number": 1,
                  "verse_key": "1:1",
                  "juz_number": 1,
                  "hizb_number": 1,
                  "rub_el_hizb_number": 1,
                  "sajdah_type": null,
                  "sajdah_number": null,
                  "words": [
                    {
                      "id": 1,
                      "position": 1,
                      "audio_url": "wbw/001_001_001.mp3",
                      "char_type_name": "word",
                      "line_number": 2,
                      "page_number": 1,
                      "code_v1": "&#xfb51;",
                      "translation": {
                        "text": "In (the) name",
                        "language_name": "english",
                      },
                      "transliteration": {
                        "text": "bis'mi",
                        "language_name": "english",
                      },
                    }
                  ],
                  "translations": [
                    {
                      "resource_id": 131,
                      "text":
                          "In the Name of Allah—the Most Compassionate, Most Merciful.",
                    }
                  ],
                  "tafsirs": [
                    {
                      "id": 82641,
                      "language_name": "english",
                      "name": "Tafsir Ibn Kathir",
                      "text":
                          "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2>",
                    }
                  ],
                },
              },
            },
          },
        },
      },
    },
    "/juzs": {
      "get": {
        "operationId": "juzs",
        "summary": "Get All Juzs",
        "tags": ["Juz"],
        "description": "Get list of all #model:XwogxNra8JdvchxBE",
        "responses": {
          "default": {"description": "", "schema": {}},
        },
      },
    },
    "/quran/verses/indopak": {
      "get": {
        "operationId": "QURAN-verses-indopak",
        "summary": "Get Indopak Script of ayah",
        "tags": ["Quran"],
        "description":
            "Get Indopak script of ayah. Use query strings to filter results, leave all query string blank if you want to fetch Indopak script of whole Quran.",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description":
                "If you want to get indopak script of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description":
                "If you want to get indopak script of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description":
                "If you want to get indopak script of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description":
                "If you want to get indopak script of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description":
                "If you want to get indopak script of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description":
                "If you want to get indopak script of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "text_indopak": {"type": "string"},
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "text_indopak": "بِسۡمِ اللهِ الرَّحۡم]ٰنِ الرَّحِيۡمِ",
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/quran/verses/uthmani_tajweed": {
      "get": {
        "operationId": "QURAN-verses-uthmani-tajweed",
        "summary": "Get Uthmani Tajweed Script of ayah",
        "tags": ["Quran"],
        "description":
            "Get Uthmani color coded tajweed text of ayah. Tajweed rules are embeded in text as `tajweed` html tags.",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description": "If you want to get text of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get text of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description": "If you want to get text of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get text of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "text_uthmani_tajweed": {"type": "string"},
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "text_uthmani_tajweed":
                        "بِسْمِ <tajweed class=ham_wasl>ٱ</tajweed>للَّهِ <tajweed class=ham_wasl>ٱ</tajweed><tajweed class=laam_shamsiyah>ل</tajweed>رَّحْمَ<tajweed class=madda_normal>ـٰ</tajweed>نِ <tajweed class=ham_wasl>ٱ</tajweed><tajweed class=laam_shamsiyah>ل</tajweed>رَّح<tajweed class=madda_permissible>ِي</tajweed>مِ <span class=end>١</span>",
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/quran/verses/uthmani": {
      "get": {
        "operationId": "QURAN-verses-uthmani",
        "summary": "Get Uthmani Script of ayah",
        "tags": ["Quran"],
        "description":
            "Get Uthmani script of ayah. Use query strings to filter results, leave all query string blank if you want to fetch Uthmani script of whole Quran.",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "text_uthmani": {"type": "string"},
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "text_uthmani": "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ",
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/quran/verses/uthmani_simple": {
      "get": {
        "operationId": "QURAN-verses-uthmani_simple",
        "summary": "Get Uthmani simple script of ayah",
        "tags": ["Quran"],
        "description":
            "Get Uthmani simple script(without tashkiq/diacritical marks) of ayah. Use query strings to filter results, leave all query string blank if you want to fetch script of whole Quran.",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description":
                "If you want to get Uthmani script of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "text_uthmani_simple": {"type": "string"},
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "text_uthmani_simple": "بسم الله الرحمن الرحيم",
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/quran/verses/imlaei": {
      "get": {
        "operationId": "QURAN-verses-Imlaei",
        "summary": "Get Imlaei Simple text of ayah",
        "tags": ["Quran"],
        "description":
            "Get Imlaei simple script(without tashkiq/diacritical marks) of ayah.",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description": "If you want to get text of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get text of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description": "If you want to get text of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get text of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "text_imlaei": {"type": "string"},
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "text_imlaei": "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/resources/recitations": {
      "get": {
        "operationId": "recitations",
        "summary": "Recitations",
        "description": "Get list of available Recitations.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Name of reciters in specific language. Will fallback to English if we don't have names in specific language.",
            "type": "string",
            "default": "en",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "array",
              "items": {r"$ref": "#/definitions/recitation"},
            },
            "examples": {
              "application/json": {
                "recitations": [
                  {
                    "id": 1,
                    "reciter_name": "AbdulBaset AbdulSamad",
                    "style": "Mujawwad",
                    "translated_name": {
                      "name": "AbdulBaset AbdulSamad",
                      "language_name": "english",
                    },
                  }
                ],
              },
            },
          },
        },
        "tags": ["Audio"],
      },
    },
    "/quran/recitations/{recitation_id}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description": "Recitation id",
          "required": true,
          "type": "number",
        }
      ],
      "get": {
        "operationId": "recitation-autio-files",
        "summary": "Get list of Audio files of single recitation",
        "description":
            "Get list of #model:knzdXGgyjYnAqbhGX for a single recitation. See #endpoint:HLbauN2sdGitPQPPL endpoint to fetch available recitations.\n\nYou can also include more fields of audio files using `fields` query string.",
        "parameters": [
          {
            "name": "fields",
            "in": "query",
            "description": "comma seperated field of audio files.",
            "type": "string",
          },
          {
            "name": "chapter_number",
            "in": "query",
            "description": "If you want to get audio file of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get audio file of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description":
                "If you want to get audio file of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get audio file of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description":
                "If you want to get audio file of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get audio file of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "meta": {
                  "type": "object",
                  "properties": {
                    "reciter_name": {"type": "string"},
                    "recitation_style": {
                      "type": ["null", "string"],
                    },
                  },
                },
              },
              "required": ["audio_files"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {"verse_key": "1:1", "url": "Alafasy/mp3/001001.mp3"},
                  {"verse_key": "1:2", "url": "Alafasy/mp3/001002.mp3"},
                  {"verse_key": "1:3", "url": "Alafasy/mp3/001003.mp3"},
                  {"verse_key": "1:4", "url": "Alafasy/mp3/001004.mp3"},
                  {"verse_key": "1:5", "url": "Alafasy/mp3/001005.mp3"},
                  {"verse_key": "1:6", "url": "Alafasy/mp3/001006.mp3"},
                  {"verse_key": "1:7", "url": "Alafasy/mp3/001007.mp3"},
                ],
                "meta": {
                  "reciter_name": "Mishari Rashid al-`Afasy",
                  "recitation_style": null,
                },
              },
            },
          },
        },
        "tags": ["Audio"],
      },
    },
    "/quran/translations/{translation_id}": {
      "parameters": [
        {
          "name": "translation_id",
          "in": "path",
          "description": "Recitation id",
          "required": true,
          "type": "number",
        }
      ],
      "get": {
        "operationId": "translation",
        "summary": "Get a single translation",
        "tags": ["Quran"],
        "description":
            "Get a single #model:XCinMTfQdCrC3D3vH of all ayah.\n\nSee #endpoint:N4JAF8phDshhyrBHs endpoint to fetch available translations.\n\nYou can also include more fields of translation using `fields` query string.",
        "parameters": [
          {
            "name": "fields",
            "in": "query",
            "description": "comma seperated fields of translation.",
            "type": "string",
          },
          {
            "name": "chapter_number",
            "in": "query",
            "description":
                "If you want to get translation of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get translation of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description":
                "If you want to get translation of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get translation of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description":
                "If you want to get translation of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get translation of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "translations": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/translation"},
                },
                "meta": {
                  "type": "object",
                  "properties": {
                    "translation_name": {"type": "string"},
                    "author_name": {
                      "type": ["null", "string"],
                    },
                  },
                },
              },
              "required": ["translations"],
            },
            "examples": {
              "application/json": {
                "translations": [
                  {
                    "resource_id": 131,
                    "text":
                        "In the Name of Allah—the Most Compassionate, Most Merciful.",
                  }
                ],
                "meta": {
                  "translation_name": "Dr. Mustafa Khattab, the Clear Quran",
                  "author_name": "Dr. Mustafa Khattab",
                },
              },
            },
          },
        },
      },
    },
    "/resources/chapter_reciters": {
      "get": {
        "operationId": "chapter-reciters",
        "summary": "List of Chapter Reciters",
        "description": "Get list of #model:Q4runBANeeCjwqfcT.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description":
                "Name of reciters in specific language. Will fallback to English if we don't have names in specific language.",
            "type": "string",
            "default": "en",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "reciters": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/chapter-reciters"},
                },
              },
            },
            "examples": {
              "application/json": {
                "reciters": [
                  {
                    "id": 3,
                    "name": "Abu Bakr al-Shatri",
                    "arabic_name": "أبو بكر الشاطرى",
                    "relative_path": "abu_bakr_ash-shaatree/",
                    "format": "mp3",
                    "files_size": 1258422528,
                  },
                  {
                    "id": 4,
                    "name": "Sa`ud ash-Shuraym",
                    "arabic_name": "سعود الشريم",
                    "relative_path": "sa3ood_al-shuraym/",
                    "format": "mp3",
                    "files_size": 1258422528,
                  },
                  {
                    "id": 5,
                    "name": "Mishari Rashid al-`Afasy",
                    "arabic_name": "مشاري راشد العفاسي",
                    "relative_path": "mishaari_raashid_al_3afaasee/",
                    "format": "mp3",
                    "files_size": 1258422528,
                  }
                ],
              },
            },
          },
        },
        "tags": ["Audio"],
      },
    },
    "/quran/tafsirs/{tafsir_id}": {
      "parameters": [
        {
          "name": "tafsir_id",
          "in": "path",
          "description": "tafsir id",
          "required": true,
          "type": "number",
        }
      ],
      "get": {
        "operationId": "tafsir",
        "summary": "Get a single tafsir",
        "tags": ["Quran"],
        "description":
            "Get a single #model:D7oy5DF6aGMhfLwDB of all ayah.\n\nSee #endpoint:5YnxJJGPMCLnM6PNE\nendpoint to fetch available tafsirs.\n\nYou can also include more fields of tafsir using `fields` query string.",
        "parameters": [
          {
            "name": "fields",
            "in": "query",
            "description": "comma seperated fields of tafsir.",
            "type": "string",
          },
          {
            "name": "chapter_number",
            "in": "query",
            "description": "If you want to get tafsir of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get tafsir of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description": "If you want to get tafsir of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get tafsir of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description":
                "If you want to get tafsir of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get tafsir of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "tafsirs": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/tafsir"},
                },
                "meta": {
                  "type": "object",
                  "properties": {
                    "tafsir_name": {"type": "string"},
                    "author_name": {
                      "type": ["null", "string"],
                    },
                  },
                },
              },
              "required": ["tafsirs"],
            },
            "examples": {
              "application/json": {
                "tafsirs": [
                  {
                    "resource_id": 169,
                    "text":
                        "<h2 class=\"title\">Which was revealed in Makkah</h2><h2 class=\"title\">The Meaning of Al-Fatihah and its Various Names</h2><p>This Surah is called</p><p>-        Al-Fatihah, that is, the Opener of the Book, the Surah with which prayers are begun.",
                  }
                ],
                "meta": {
                  "tafsir_name": "Tafsir Ibn Kathir",
                  "author_name": "Hafiz Ibn Kathir",
                },
              },
            },
          },
        },
      },
    },
    "/quran/verses/code_v1": {
      "get": {
        "operationId": "QURAN-verses-code_v1",
        "summary": "Get V1 Glyph codes of ayah",
        "tags": ["Quran"],
        "description": "Get glyph codes of ayah for QCF v1 font",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description": "If you want to get text of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get text of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description": "If you want to get text of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get text of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "code_v1": {
                        "type": "string",
                        "description": "Glyph codes for v1",
                      },
                      "v1_page": {
                        "type": "integer",
                        "minimum": 1,
                        "maximum": 604,
                        "description":
                            "Madani Muhsaf page number. You can use `v1_page` to generate css and font faces for QCF page font. ",
                      },
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "code_v1": "ﭑ ﭒ ﭓ ﭔ ﭕ",
                    "v1_page": 1,
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/quran/verses/code_v2": {
      "get": {
        "operationId": "QURAN-verses-code_v2",
        "summary": "Get V2 Glyph codes of ayah",
        "tags": ["Quran"],
        "description": "Get glyph codes of ayah for QCF v2 font",
        "parameters": [
          {
            "name": "chapter_number",
            "in": "query",
            "description": "If you want to get text of a specific surah.",
            "type": "integer",
            "minimum": 1,
            "maximum": 114,
          },
          {
            "name": "juz_number",
            "in": "query",
            "description": "If you want to get text of a specific juz.",
            "type": "integer",
            "minimum": 1,
            "maximum": 30,
          },
          {
            "name": "page_number",
            "in": "query",
            "description": "If you want to get text of a Madani Muhsaf page",
            "type": "integer",
            "minimum": 1,
            "maximum": 604,
          },
          {
            "name": "hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 60,
          },
          {
            "name": "rub_el_hizb_number",
            "in": "query",
            "description": "If you want to get text of a specific Rub el Hizb.",
            "type": "integer",
            "minimum": 1,
            "maximum": 240,
          },
          {
            "name": "verse_key",
            "in": "query",
            "description": "If you want to get text of a specific ayah.",
            "type": "string",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "verses": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "verse_key": {"type": "string"},
                      "code_v2": {
                        "type": "string",
                        "description": "Glyph codes for v2",
                      },
                      "v2_page": {
                        "type": "integer",
                        "description":
                            "Madani Muhsaf page number. You can use `v2_page` to generate css and font faces for QCF page font. ",
                        "minimum": 1,
                        "maximum": 604,
                      },
                    },
                    "required": ["code_v2", "v2_page"],
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "verses": [
                  {
                    "id": 1,
                    "verse_key": "1:1",
                    "code_v2": " ﱂ ﱃ ﱄ ﱅ",
                    "v2_page": 1,
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/recitations/{recitation_id}/by_chapter/{chapter_number}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description":
              "Recitation Id, you can get list of all ayah by ayah recitations using this endpoint #endpoint:HLbauN2sdGitPQPPL",
          "required": true,
          "type": "number",
        },
        {
          "name": "chapter_number",
          "in": "path",
          "required": true,
          "type": "number",
          "minimum": 1,
          "maximum": 114,
        }
      ],
      "get": {
        "operationId": "list-surah-recitation",
        "summary": "Get Ayah recitations for specific Surah",
        "tags": ["Audio"],
        "description": "Get list of ayah #model:knzdXGgyjYnAqbhGX for a Surah.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "verse_key": "1:1",
                    "url": "AbdulBaset/Mujawwad/mp3/001001.mp3",
                  },
                  {
                    "verse_key": "1:2",
                    "url": "AbdulBaset/Mujawwad/mp3/001002.mp3",
                  },
                  {
                    "verse_key": "1:3",
                    "url": "AbdulBaset/Mujawwad/mp3/001003.mp3",
                  }
                ],
                "pagination": {
                  "per_page": 10,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 2,
                  "total_records": 20,
                },
              },
            },
          },
        },
      },
    },
    "/recitations/{recitation_id}/by_juz/{juz_number}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description":
              "Recitation Id, you can get list of all ayah by ayah recitations using this endpoint #endpoint:HLbauN2sdGitPQPPL",
          "required": true,
          "type": "number",
        },
        {
          "name": "juz_number",
          "in": "path",
          "required": true,
          "type": "number",
          "minimum": 1,
          "maximum": 30,
        }
      ],
      "get": {
        "operationId": "list-juz-recitaiton",
        "summary": "Get Ayah recitations for specific Juz",
        "tags": ["Audio"],
        "description": "Get list of ayah #model:knzdXGgyjYnAqbhGX for a juz.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
              "required": ["audio_files", "pagination"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "verse_key": "1:1",
                    "url": "AbdulBaset/Mujawwad/mp3/001001.mp3",
                  },
                  {
                    "verse_key": "1:2",
                    "url": "AbdulBaset/Mujawwad/mp3/001002.mp3",
                  },
                  {
                    "verse_key": "1:3",
                    "url": "AbdulBaset/Mujawwad/mp3/001003.mp3",
                  }
                ],
                "pagination": {
                  "per_page": 10,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 2,
                  "total_records": 20,
                },
              },
            },
          },
        },
      },
    },
    "/recitations/{recitation_id}/by_page/{page_number}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description":
              "Recitation Id, you can get list of all ayah by ayah recitations using this endpoint #endpoint:HLbauN2sdGitPQPPL",
          "required": true,
          "type": "number",
        },
        {
          "name": "page_number",
          "in": "path",
          "required": true,
          "type": "number",
          "minimum": 1,
          "maximum": 604,
        }
      ],
      "get": {
        "operationId": "list-page-recitaiton",
        "summary": "Get Ayah recitations for specific Madani Mushaf page",
        "tags": ["Audio"],
        "description":
            "Get list of ayah #model:knzdXGgyjYnAqbhGX for a Madani Mushaf page.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
              "required": ["audio_files", "pagination"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "verse_key": "1:1",
                    "url": "AbdulBaset/Mujawwad/mp3/001001.mp3",
                  },
                  {
                    "verse_key": "1:2",
                    "url": "AbdulBaset/Mujawwad/mp3/001002.mp3",
                  },
                  {
                    "verse_key": "1:3",
                    "url": "AbdulBaset/Mujawwad/mp3/001003.mp3",
                  }
                ],
                "pagination": {
                  "per_page": 10,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 15,
                  "total_records": 148,
                },
              },
            },
          },
        },
      },
    },
    "/recitations/{recitation_id}/by_rub/{rub_el_hizb_number}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description":
              "Recitation Id, you can get list of all ayah by ayah recitations using this endpoint #endpoint:HLbauN2sdGitPQPPL",
          "required": true,
          "type": "number",
        },
        {
          "name": "rub_el_hizb_number",
          "in": "path",
          "required": true,
          "type": "number",
          "minimum": 1,
          "maximum": 240,
        }
      ],
      "get": {
        "operationId": "list-rub-el-hizb-recitaiton",
        "summary": "Get Ayah recitations for specific Rub el Hizb",
        "tags": ["Audio"],
        "description":
            "Get list of ayah #model:knzdXGgyjYnAqbhGX for a Rub el Hizb.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
              "required": ["audio_files", "pagination"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "verse_key": "1:1",
                    "url": "AbdulBaset/Mujawwad/mp3/001001.mp3",
                  },
                  {
                    "verse_key": "1:2",
                    "url": "AbdulBaset/Mujawwad/mp3/001002.mp3",
                  },
                  {
                    "verse_key": "1:3",
                    "url": "AbdulBaset/Mujawwad/mp3/001003.mp3",
                  }
                ],
                "pagination": {
                  "per_page": 10,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 15,
                  "total_records": 148,
                },
              },
            },
          },
        },
      },
    },
    "/recitations/{recitation_id}/by_hizb/{hizb_number}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description":
              "Recitation Id, you can get list of all ayah by ayah recitations using this endpoint #endpoint:HLbauN2sdGitPQPPL",
          "required": true,
          "type": "number",
        },
        {
          "name": "hizb_number",
          "in": "path",
          "required": true,
          "type": "number",
          "minimum": 1,
          "maximum": 60,
        }
      ],
      "get": {
        "operationId": "list-hizb-recitaiton",
        "summary": "Get Ayah recitations for specific Hizb",
        "tags": ["Audio"],
        "description": "Get list of ayah #model:knzdXGgyjYnAqbhGX for a Hizb.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
              "required": ["audio_files", "pagination"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "verse_key": "1:1",
                    "url": "AbdulBaset/Mujawwad/mp3/001001.mp3",
                  },
                  {
                    "verse_key": "1:2",
                    "url": "AbdulBaset/Mujawwad/mp3/001002.mp3",
                  },
                  {
                    "verse_key": "1:3",
                    "url": "AbdulBaset/Mujawwad/mp3/001003.mp3",
                  }
                ],
                "pagination": {
                  "per_page": 10,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 15,
                  "total_records": 148,
                },
              },
            },
          },
        },
      },
    },
    "/recitations/{recitation_id}/by_ayah/{ayah_key}": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "description":
              "Recitation Id, you can get list of all ayah by ayah recitations using this endpoint #endpoint:HLbauN2sdGitPQPPL",
          "required": true,
          "type": "number",
        },
        {
          "name": "ayah_key",
          "in": "path",
          "description":
              "Ayah key is combination of surah number and  ayah number. e.g 1:1 will be first Ayah of first Surah",
          "required": true,
          "type": "string",
          "minimum": 1,
          "maximum": 60,
        }
      ],
      "get": {
        "operationId": "list-ayah-recitaiton",
        "summary": "Get Ayah recitations for specific Ayah",
        "tags": ["Audio"],
        "description": "Get list of ayah #model:knzdXGgyjYnAqbhGX for a Hizb.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "audio_files": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/audiofile"},
                },
                "pagination": {r"$ref": "#/definitions/pagination"},
              },
              "required": ["audio_files", "pagination"],
            },
            "examples": {
              "application/json": {
                "audio_files": [
                  {
                    "verse_key": "1:1",
                    "url": "AbdulBaset/Mujawwad/mp3/001001.mp3",
                  },
                  {
                    "verse_key": "1:2",
                    "url": "AbdulBaset/Mujawwad/mp3/001002.mp3",
                  },
                  {
                    "verse_key": "1:3",
                    "url": "AbdulBaset/Mujawwad/mp3/001003.mp3",
                  }
                ],
                "pagination": {
                  "per_page": 10,
                  "current_page": 1,
                  "next_page": 2,
                  "total_pages": 15,
                  "total_records": 148,
                },
              },
            },
          },
        },
      },
    },
    "/resources/recitations/{recitation_id}/info": {
      "parameters": [
        {
          "name": "recitation_id",
          "in": "path",
          "required": true,
          "type": "string",
        }
      ],
      "get": {
        "operationId": "recitation-info",
        "summary": "Recitation Info",
        "tags": ["Resources"],
        "description":
            "Get information of a specific recitation. Could include detail about the reciter, recitation style. When and who recorded it etc.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "info": {
                  "type": "object",
                  "properties": {
                    "id": {"type": "integer"},
                    "info": {
                      "type": ["null", "string"],
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "info": {"id": 1, "info": null},
              },
            },
          },
        },
      },
    },
    "/resources/translations/{translation_id}/info": {
      "parameters": [
        {
          "name": "translation_id",
          "in": "path",
          "required": true,
          "type": "string",
        }
      ],
      "get": {
        "operationId": "translation-info",
        "summary": "Translation Info",
        "tags": ["Resources"],
        "description":
            "Get information of a specific translation. Could include detail about the author, publishing date and publisher etc.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "info": {
                  "type": "object",
                  "properties": {
                    "id": {"type": "integer"},
                    "info": {
                      "type": ["null", "string"],
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "info": {"id": 1, "info": null},
              },
            },
          },
        },
      },
    },
    "/resources/translations": {
      "get": {
        "operationId": "translations",
        "summary": "Translations",
        "tags": ["Resources"],
        "description":
            "Get list of available translations. Use `language` query to get translated names of authors in specific language(e.g language=ur will send translation names in Urdu). \n\nFor list of available language see  #endpoint:EZsWyDnekGaDKaCpt endpoint.",
        "parameters": [
          {"name": "language", "in": "query", "type": "string"},
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "translations": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/resource"},
                },
              },
            },
            "examples": {
              "application/json": {
                "translations": [
                  {
                    "id": 131,
                    "name": "Dr. Mustafa Khattab, the Clear Quran",
                    "author_name": "Dr. Mustafa Khattab",
                    "slug": "clearquran-with-tafsir",
                    "language_name": "english",
                    "translated_name": {
                      "name": "Dr. Mustafa Khattab",
                      "language_name": "english",
                    },
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/resources/tafsirs": {
      "get": {
        "operationId": "tafsirs",
        "summary": "Tafsirs",
        "tags": ["Resources"],
        "description": "Get list of available tafsirs.",
        "parameters": [
          {
            "name": "language",
            "in": "query",
            "description": "",
            "type": "string",
            "default": "en",
          }
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "tafsirs": {
                  "type": "array",
                  "items": {r"$ref": "#/definitions/resource"},
                },
              },
            },
            "examples": {
              "application/json": {
                "tafsirs": [
                  {
                    "id": 169,
                    "name": "Tafsir Ibn Kathir",
                    "author_name": "Hafiz Ibn Kathir",
                    "slug": "en-tafisr-ibn-kathir",
                    "language_name": "english",
                    "translated_name": {
                      "name": "Tafsir Ibn Kathir",
                      "language_name": "english",
                    },
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/resources/tafsirs/{tafsir_id}/info": {
      "parameters": [
        {"name": "tafsir_id", "in": "path", "required": true, "type": "string"},
      ],
      "get": {
        "operationId": "tafsir-info",
        "summary": "Tafsir Info",
        "tags": ["Resources"],
        "description":
            "Get the information of a specific tafsir. Could include information about the author, when it was published etc.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "id": {"type": "number"},
                "info": {
                  "type": ["string", "null"],
                },
              },
            },
          },
        },
      },
    },
    "/resources/recitation_styles": {
      "get": {
        "operationId": "recitation-styles",
        "summary": "Recitation Styles",
        "tags": ["Resources"],
        "description": "Get the available recitation styles.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "mujawwad": {"type": "string"},
                "murattal": {"type": "string"},
                "muallim": {"type": "string"},
              },
            },
          },
        },
      },
    },
    "/resources/languages": {
      "get": {
        "operationId": "languages",
        "summary": "Languages",
        "tags": ["Resources"],
        "description":
            "Get all languages. You can get translated names of languages in specific language using `language` query parameter. For example \n\n  ```\n  /resources/languages?language=ur\n  ```\n  \nwill return language names translated into Urdu",
        "parameters": [
          {"name": "language", "in": "query", "type": "string"},
        ],
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "array",
              "items": {r"$ref": "#/definitions/language"},
            },
            "examples": {
              "application/json": [
                {"id": -71611860, "iso_code": "amet"},
              ],
            },
          },
        },
      },
    },
    "/resources/chapter_infos": {
      "get": {
        "operationId": "chapter-info",
        "summary": "Chapter Infos",
        "tags": ["Resources"],
        "description": "Get list of chaper info we've in different languages.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "chapter_infos": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "id": {"type": "integer"},
                      "name": {"type": "string"},
                      "author_name": {"type": "string"},
                      "slug": {
                        "type": ["null", "string"],
                      },
                      "language_name": {"type": "string"},
                      "translated_name": {
                        "type": "object",
                        "properties": {
                          "name": {"type": "string"},
                          "language_name": {"type": "string"},
                        },
                      },
                    },
                  },
                },
              },
            },
            "examples": {
              "application/json": {
                "chapter_infos": [
                  {
                    "id": 155,
                    "name": "Hamza Roberto Piccardo",
                    "author_name": "Hamza Roberto Piccardo",
                    "slug": "hamza-roberto-piccardo-info",
                    "language_name": "italian",
                    "translated_name": {
                      "name": "Hamza Roberto Piccardo",
                      "language_name": "english",
                    },
                  },
                  {
                    "id": 63,
                    "name": "Chapter Info",
                    "author_name": "Sayyid Abul Ala Maududi",
                    "slug": null,
                    "language_name": "malayalam",
                    "translated_name": {
                      "name": "Chapter Info",
                      "language_name": "english",
                    },
                  },
                  {
                    "id": 62,
                    "name": "Chapter Info",
                    "author_name": "Sayyid Abul Ala Maududi",
                    "slug": null,
                    "language_name": "tamil",
                    "translated_name": {
                      "name": "Chapter Info",
                      "language_name": "english",
                    },
                  },
                  {
                    "id": 61,
                    "name": "Chapter Info",
                    "author_name": "Sayyid Abul Ala Maududi",
                    "slug": null,
                    "language_name": "urdu",
                    "translated_name": {
                      "name": "Chapter Info",
                      "language_name": "english",
                    },
                  }
                ],
              },
            },
          },
        },
      },
    },
    "/resources/verse_media": {
      "get": {
        "operationId": "verse-media",
        "summary": "Verse Media",
        "tags": ["Resources"],
        "description": "Get media related to the verse.",
        "responses": {
          "200": {
            "description": "",
            "schema": {
              "type": "object",
              "properties": {
                "id": {"type": "number"},
                "name": {"type": "string"},
                "author_name": {"type": "string"},
                "language_name": {"type": "string"},
              },
            },
          },
        },
      },
    },
    "/search": {
      "get": {
        "operationId": "search",
        "tags": ["Search"],
        "consumes": ["application/json"],
        "parameters": [
          {
            "name": "q",
            "in": "query",
            "description": "Search query, you can use *query* as well",
            "type": "string",
          },
          {
            "name": "size",
            "in": "query",
            "description": "Results per page. *s* is also valid parameter.",
            "type": "number",
            "default": 20,
          },
          {
            "name": "page",
            "in": "query",
            "description":
                "Page number, well for pagination. You can use *p* as well",
            "type": "number",
            "default": 0,
          },
          {
            "name": "language",
            "in": "query",
            "description":
                "ISO code of language, use this query params if you want to boost translations for specific language. \nFor list of available language see  #endpoint:8rjMCZEyPEZMHAKz9 endpoint.",
            "type": "string",
            "default": "en",
          }
        ],
        "responses": {
          "default": {"description": "", "schema": {}},
        },
      },
    },
  },
  "definitions": {
    "audiofile": {
      "title": "AudioFile",
      "type": "object",
      "properties": {
        "url": {"type": "string"},
        "duration": {"type": "number"},
        "format": {"type": "string"},
        "segments": {"type": "array", "items": {}},
      },
      "example": {
        "url": "https://verses.quran.com/AbdulBaset/Mujawwad/mp3/001001.mp3",
        "duration": 6,
        "format": "mp3",
        "segments": [
          [
            [0, 120, -1],
            [120, 420, 0],
            [540, 810, 1],
            [1350, 1006, 2],
            [2356, 2454, 3],
            [4810, 390, -1],
          ]
        ],
      },
    },
    "author": {
      "title": "Author",
      "type": "object",
      "properties": {
        "name": {"type": "string"},
        "url": {
          "type": ["string", "null"],
        },
        "id": {"type": "number"},
      },
      "example": {"name": "Dr. Ghali", "url": null},
    },
    "chapter-info": {
      "title": "Chapter Info",
      "type": "object",
      "properties": {
        "chapter_id": {"type": "number"},
        "text": {
          "type": "string",
          "description":
              "Long text of chapter info, this could include html tags for formatting and styling.",
        },
        "short_text": {"type": "string"},
        "language_name": {"type": "string"},
        "source": {
          "type": "string",
          "description":
              "Name of the source, could be a book name or site name.",
        },
      },
      "required": ["chapter_id", "text", "short_text", "source"],
      "example": {
        "chapter_id": 1,
        "text":
            "<h2>Name</h2>\n<p>This Surah is named Al-Fatihah because of its subject-matter. Fatihah is that which opens a subject or a book or any other thing. In other words, Al-Fatihah is a sort of preface.</p>...",
        "short_text":
            "This Surah is named Al-Fatihah because of its subject-matter. Fatihah is that which opens a subject or a book or any other thing. In other words, Al-Fatihah is a sort of preface.",
        "language_name": "English",
        "source":
            "Sayyid Abul Ala Maududi - Tafhim al-Qur'an - The Meaning of the Quran",
      },
    },
    "language": {
      "title": "Language",
      "type": "object",
      "properties": {
        "id": {"type": "number"},
        "name": {"type": "string"},
        "native_name": {"type": "string"},
        "iso_code": {
          "type": "string",
          "description":
              "iso code of the language, you'll pass this code in api calls for fetching content in specific language.",
        },
        "direction": {"type": "string"},
        "translated_names": {
          "type": "array",
          "items": {r"$ref": "#/definitions/translated-name"},
        },
      },
      "example": {
        "id": 1,
        "name": "English",
        "native_name": "English",
        "iso_code": "en",
        "direction": "ltr",
        "translated_names": [
          {"name": "انگریزی", "language_name": "Urdu"},
        ],
      },
    },
    "media-content": {
      "title": "MediaContent",
      "type": "object",
      "properties": {
        "url": {"type": "string"},
        "embed_text": {"type": "string"},
        "provider": {"type": "string"},
        "author_name": {"type": "string"},
      },
      "example": {
        "url": "https://www.youtube.com/embed/JyLuLv2hrAo?autoplay=1",
        "embed_text":
            "<iframe src=\"//www.youtube.com/embed/JyLuLv2hrAo?enablejsapi=1&wmode=transparent&iv_load_policy=3&origin=https%3A%2F%2Fquran.com&rel=0&autohide=1&autoplay=1\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>",
        "provider": "YouTube",
        "author_name": "Bayyinah",
      },
    },
    "recitation": {
      "title": "Recitation",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "reciter_name": {"type": "string"},
        "style": {"type": "string"},
        "translated_name": {
          "type": "object",
          "properties": {
            "name": {"type": "string"},
            "language_name": {"type": "string"},
          },
        },
      },
      "example": {
        "id": 1,
        "reciter_name": "AbdulBaset AbdulSamad",
        "style": "Mujawwad",
        "translated_name": {
          "name": "AbdulBaset AbdulSamad",
          "language_name": "english",
        },
      },
    },
    "tafsir": {
      "title": "Tafsir",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "verse_id": {"type": "integer"},
        "language_id": {"type": "integer"},
        "text": {"type": "string"},
        "language_name": {"type": "string"},
        "resource_name": {"type": "string"},
        "verse_key": {"type": "string"},
        "chapter_id": {"type": "integer"},
        "verse_number": {"type": "integer"},
        "juz_number": {"type": "integer"},
        "hizb_number": {"type": "integer"},
        "rub_el_hizb_number": {"type": "integer"},
        "page_number": {"type": "integer"},
      },
      "example": {
        "verse_id": 1,
        "language_id": 38,
        "text":
            "<p>Bismillah بِسْمِ اللَّـهِ is a verse of the Holy Qur'an</p>",
        "language_name": "english",
        "resource_name": "Maarif-ul-Quran",
        "verse_key": "1:1",
        "chapter_id": 1,
        "verse_number": 1,
        "juz_number": 1,
        "hizb_number": 1,
        "rub_number": 1,
        "page_number": 1,
      },
    },
    "translated-name": {
      "title": "TranslatedName",
      "type": "object",
      "properties": {
        "language_name": {"type": "string", "default": "english"},
        "name": {
          "type": "string",
          "description": "Name of the resource in specific language.",
        },
      },
      "required": ["language_name", "name"],
      "example": {"language_name": "english", "name": "The Opener"},
    },
    "translation": {
      "title": "Translation",
      "type": "object",
      "properties": {
        "resource_id": {"type": "integer"},
        "resource_name": {"type": "string"},
        "id": {"type": "integer"},
        "text": {
          "type": "string",
          "description":
              "Text of the translation, text could have HTML tags for formatting and footnotes. ",
        },
        "verse_id": {"type": "integer"},
        "language_id": {"type": "integer"},
        "language_name": {"type": "string"},
        "verse_key": {"type": "string"},
        "chapter_id": {"type": "integer"},
        "verse_number": {"type": "integer"},
        "juz_number": {"type": "integer"},
        "hizb_number": {"type": "integer"},
        "rub_number": {"type": "integer"},
        "page_number": {"type": "integer"},
      },
      "required": ["resource_id", "text"],
      "example": {
        "resource_id": 131,
        "resource_name": "Dr. Mustafa Khattab, the Clear Quran",
        "id": 903958,
        "text": "In the Name of Allah—the Most Compassionate, Most Merciful.",
        "verse_id": 1,
        "language_id": 38,
        "language_name": "english",
        "verse_key": "1:1",
        "chapter_id": 1,
        "verse_number": 1,
        "juz_number": 1,
        "hizb_number": 1,
        "rub_number": 1,
        "page_number": 1,
      },
    },
    "transliteration": {
      "title": "Transliteration",
      "type": "object",
      "properties": {
        "language_name": {"type": "string"},
        "text": {"type": "string"},
      },
    },
    "verse": {
      "title": "Verse",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "chapter_id": {
          "type": "integer",
          "description": "Chapter number of this verse",
        },
        "verse_number": {"type": "integer"},
        "verse_key": {
          "type": "string",
          "description":
              "key of the verse, key is generated using chapter number and ayah number. e.g 1:1 is first ayah of first surah.",
        },
        "verse_index": {"type": "integer"},
        "text_uthmani": {
          "type": "string",
          "description":
              "Ayah text in Uthmani Script.\n\nUthmani script is an old-fashion script used by the third Caliph, Uthman, to produce the first standard quran manuscript.",
        },
        "text_uthmani_simple": {
          "type": "string",
          "description": "Uthmani script diacritic marks ",
        },
        "text_imlaei": {
          "type": "string",
          "description":
              "Ayah text in Imla'ei script.\n\nImla'ei script, is the modern Arabic writing style which is currently in use.",
        },
        "text_imlaei_simple": {"type": "string"},
        "text_indopak": {"type": "string"},
        "text_uthmani_tajweed": {"type": "string"},
        "juz_number": {"type": "integer"},
        "hizb_number": {"type": "integer"},
        "rub_number": {"type": "integer"},
        "sajdah_type": {"type": "null"},
        "sajdah_number": {"type": "null"},
        "page_number": {
          "type": "integer",
          "description":
              "page_number is deperacted, please use `v1_page` instead.",
          "minimum": 1,
          "maximum": 604,
        },
        "image_url": {"type": "string"},
        "image_width": {"type": "integer"},
        "words": {
          "type": "array",
          "items": {r"$ref": "#/definitions/word"},
        },
        "audio": {r"$ref": "#/definitions/audiofile"},
        "translations": {
          "type": "array",
          "items": {r"$ref": "#/definitions/translation"},
        },
        "code_v1": {
          "type": "string",
          "description": "Glyphs codes for QCF v1 fonts",
        },
        "code_v2": {
          "type": "string",
          "description": "Glyphs codes for QCF v2 fonts",
        },
        "v1_page": {
          "type": "integer",
          "description":
              "Madani Muhsaf Page number for v1 font. If `v1_page` value is 2, that means you'll use page 2 font file to render this ayah using v1 glyph codes.",
          "minimum": 1,
          "maximum": 604,
        },
        "v2_page": {
          "type": "integer",
          "description":
              "Madani Muhsaf Page number for v2 font. If `v2_page` value is 2, that means you'll use page 2 font file to render this ayah using v2 glyph codes.",
          "minimum": 1,
          "maximum": 604,
        },
      },
      "required": [
        "id",
        "verse_number",
        "verse_key",
        "juz_number",
        "hizb_number",
        "rub_number",
        "sajdah_type",
        "sajdah_number",
        "page_number",
      ],
      "example": {
        "id": 1,
        "chapter_id": 1,
        "verse_number": 1,
        "verse_key": "1:1",
        "verse_index": 1,
        "text_uthmani": "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ",
        "text_uthmani_simple": "بسم الله الرحمن الرحيم",
        "text_imlaei": "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
        "text_imlaei_simple": "بسم الله الرحمن الرحيم",
        "text_indopak": "بِسۡمِ اللهِ الرَّحۡمٰنِ الرَّحِيۡمِ",
        "text_uthmani_tajweed":
            "بِسْمِ <tajweed class=ham_wasl>ٱ</tajweed>للَّهِ <tajweed class=ham_wasl>ٱ</tajweed><tajweed class=laam_shamsiyah>ل</tajweed>رَّحْمَ<tajweed class=madda_normal>ـٰ</tajweed>نِ <tajweed class=ham_wasl>ٱ</tajweed><tajweed class=laam_shamsiyah>ل</tajweed>رَّح<tajweed class=madda_permissible>ِي</tajweed>مِ <span class=end>١</span>",
        "juz_number": 1,
        "hizb_number": 1,
        "rub_number": 1,
        "sajdah_type": null,
        "sajdah_number": null,
        "page_number": 1,
        "image_url": "//c22506.r6.cf1.rackcdn.com/1_1.png",
        "image_width": 675,
        "words": [
          {
            "id": 1,
            "position": 1,
            "audio_url": "wbw/001_001_001.mp3",
            "char_type_name": "word",
            "translation": {
              "text": "In (the) name",
              "language_name": "english",
            },
            "transliteration": {"text": "bis'mi", "language_name": "english"},
          }
        ],
      },
    },
    "word": {
      "title": "Word",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "position": {
          "type": "integer",
          "description": "Word position within ayah",
        },
        "text_uthmani": {
          "type": "string",
          "description": "Word text in Uthmanic script",
        },
        "text_indopak": {"type": "string"},
        "text_imlaei": {
          "type": "string",
          "description": "Word text in simple/Imlaei script",
        },
        "verse_key": {"type": "string"},
        "page_number": {
          "type": "integer",
          "description":
              "page_number is deperacted, please use `v1_page` instead.",
          "minimum": 1,
          "maximum": 604,
        },
        "line_number": {
          "type": "integer",
          "description": "Line number in the Muhsaf for this word",
        },
        "audio_url": {"type": "string"},
        "location": {"type": "string"},
        "char_type_name": {"type": "string"},
        "code_v1": {
          "type": "string",
          "description":
              "glyph code that you can use to render the word using QCF  v1 font.",
        },
        "code_v2": {
          "type": "string",
          "description":
              "glyph code that you can use to render the word using QCF  v2 font.",
        },
        "translation": {
          "type": "object",
          "properties": {
            "text": {"type": "string"},
            "language_name": {"type": "string"},
          },
        },
        "transliteration": {
          "type": "object",
          "properties": {
            "text": {"type": "string"},
            "language_name": {"type": "string"},
          },
        },
        "v1_page": {
          "type": "integer",
          "description":
              "Madani Muhsaf Page number for v1 font. If `v1_page` value is 2, that means you'll use page 2 font file to render this word using v1 glyph codes.",
          "minimum": 1,
          "maximum": 604,
        },
        "v2_page": {
          "type": "integer",
          "description":
              "Madani Muhsaf Page number for v2 font. If `v2_page` value is 2, that means you'll use page 2 font file to render this ayah using v2 glyph codes.",
          "minimum": 1,
          "maximum": 604,
        },
      },
      "required": [
        "position",
        "audio_url",
        "char_type_name",
        "translation",
        "transliteration",
      ],
      "example": {
        "id": 1,
        "position": 1,
        "text_uthmani": "بِسْمِ",
        "text_indopak": "بِسۡمِ",
        "text_imlaei": "بِسْمِ",
        "verse_key": "1:1",
        "page_number": 1,
        "line_number": 2,
        "audio_url": "wbw/001_001_001.mp3",
        "location": "1:1:1",
        "char_type_name": "word",
        "code_v1": "&#xfb51;",
        "translation": {"text": "In (the) name", "language_name": "english"},
        "transliteration": {"text": "bis'mi", "language_name": "english"},
      },
    },
    "chapter": {
      "title": "Chapter",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "revelation_place": {"type": "string"},
        "revelation_order": {"type": "integer"},
        "bismillah_pre": {"type": "boolean"},
        "name_complex": {"type": "string"},
        "name_arabic": {"type": "string"},
        "verses_count": {"type": "integer"},
        "pages": {
          "type": "array",
          "items": {"type": "integer"},
        },
        "translated_name": {r"$ref": "#/definitions/translated-name"},
      },
      "required": ["translated_name"],
      "example": {
        "id": 1,
        "revelation_place": "makkah",
        "revelation_order": 5,
        "bismillah_pre": false,
        "name_complex": "Al-Fātiĥah",
        "name_arabic": "الفاتحة",
        "verses_count": 7,
        "pages": [1, 1],
        "translated_name": {"language_name": "english", "name": "The Opener"},
      },
    },
    "resource": {
      "title": "Resource",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "name": {"type": "string"},
        "author_name": {"type": "string"},
        "slug": {"type": "string"},
        "language_name": {"type": "string"},
        "translated_name": {
          "type": "object",
          "properties": {
            "name": {"type": "string"},
            "language_name": {"type": "string"},
          },
        },
      },
      "example": {
        "id": 169,
        "name": "Tafsir Ibn Kathir",
        "author_name": "Hafiz Ibn Kathir",
        "slug": "en-tafisr-ibn-kathir",
        "language_name": "english",
        "translated_name": {
          "name": "Tafsir Ibn Kathir",
          "language_name": "english",
        },
      },
    },
    "pagination": {
      "title": "Pagination",
      "type": "object",
      "properties": {
        "per_page": {
          "type": "integer",
          "description": "Entries per api call",
          "default": 10,
        },
        "current_page": {"type": "integer", "default": 1, "description": ""},
        "next_page": {
          "type": "integer",
          "description": "Next page in paginated result",
        },
        "total_pages=": {
          "type": "integer",
          "description": "Total number of pages",
        },
        "total_records=": {"type": "integer"},
      },
      "example": {
        "per_page": 1,
        "current_page": 1,
        "next_page": 2,
        "total_pages=": 7,
        "total_records=": 7,
      },
    },
    "juz": {
      "title": "Juz",
      "type": "object",
      "properties": {
        "id": {"type": "integer"},
        "juz_number": {
          "type": "integer",
          "minimum": 1,
          "maximum": 30,
          "description": "",
        },
        "first_verse_id": {
          "type": "integer",
          "description": "Id of the first ayah in this juz.",
        },
        "last_verse_id": {
          "type": "integer",
          "description": "Id of the last ayah in this juz.",
        },
        "verses_count": {
          "type": "integer",
          "description": "total verses in this juz",
        },
        "verse_mapping": {
          "type": "object",
          "description":
              "Mapping of surah and range of ayah each juz has. \n\nverse_mapping: {\"1: \"1-7\", \"2\": \"1-141\"}\n\nmeans this juz has 1-7 ayah of first surah, then 1-141 ayah of second surah.",
          "properties": {
            "1": {"type": "string"},
            "2": {"type": "string"},
          },
        },
      },
      "required": ["verse_mapping"],
      "example": {
        "juz_number": 1,
        "first_verse_id": 1,
        "last_verse_id": 148,
        "verses_count": 148,
        "verse_mapping": {"1": "1-7", "2": "1-141"},
      },
    },
    "chapter-recitation": {
      "title": "Chapter Recitation",
      "type": "object",
      "example": {
        "id": 1,
        "chapter_id": 1,
        "file_size": 710784,
        "format": "mp3",
        "total_files": 1,
        "audio_url":
            "https://download.quranicaudio.com/quran/abdullaah_3awwaad_al-juhaynee//001.mp3",
      },
      "properties": {
        "id": {"type": "integer", "description": "The Id of the audio file"},
        "chapter_id": {"type": "integer", "description": "The chapter id"},
        "file_size": {
          "type": "integer",
          "description": "The file size in bytes",
        },
        "format": {"type": "string", "description": "The format of the file"},
        "total_files": {
          "type": "integer",
          "description": "The total number of files",
        },
        "audio_url": {"type": "string", "description": "The audio file's url"},
      },
    },
    "chapter-reciters": {
      "title": "Chapter Reciters",
      "type": "object",
      "properties": {
        "id": {"type": "integer", "description": "Reciter ID"},
        "name": {"type": "string", "description": "Name of reciter in English"},
        "arabic_name": {
          "type": "string",
          "description": "Reciter name in Arabic ",
        },
        "relative_path": {"type": "string"},
        "format": {
          "type": "string",
          "description": "Audio files format",
          "default": "mp3",
        },
        "files_size": {
          "type": "number",
          "description": "Total size of all audio files in KBs",
        },
      },
      "required": ["id", "name"],
      "example": {
        "id": 3,
        "name": "Abu Bakr al-Shatri",
        "arabic_name": "أبو بكر الشاطرى",
        "relative_path": "abu_bakr_ash-shaatree/",
        "format": "mp3",
        "files_size": 1258422528,
      },
    },
  },
};
