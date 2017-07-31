# nlidb-datasets

SENLIDB Dataset
=================================================
This dataset contains 24,890 unique SQL queries, extracted from Stack Exchange Data Explorer site
(http://data.stackexchange.com/stackoverflow/queries).

In addition to the information available on the original site, this dataset contains 780 additional 
manual annotations for 296 queries.

Contents:
----------

- README.md: this file

- train.json:

    Contains 24594 entries, with the following structure:
    
```javascript
    {
        title       : "(string) Title provided in natural language that explains the meaning of the SQL query"
        description : "(string) A longer description of the query (may be missing)"
        sql_plain   : "(string) The original query, as it appeared on data.stackexchange"
        sql         : "(string) Query with comments removed"
        comments    : "(list of strings) List with the removed comments"
        url         : "(string) URL where the query or its revision can be found"
        id          : "(string) Unique identifier, extracted from the url"
    }
```

- test.json:

    Contains 296 entries that follow the structure from the training file, with the addition
    of the following fields:

```javascript
    {
        annotations: [
            {
                annotation  : "(string) Natural Language manual annotation"
                annotator_id: "(integer) Number uniquely identifying the annotator"
            }
        ]
    }
```

License
------------
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](https://creativecommons.org/licenses/by-sa/3.0/).
   
Reference
------------
Dataset for a Neural Natural Language Interface for Databases (NNLIDB) - https://arxiv.org/abs/1707.03172
