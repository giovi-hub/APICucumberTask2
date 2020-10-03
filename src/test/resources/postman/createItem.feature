Feature: Item
@Test1
  Scenario: As user I want to create a New Item

    Given I have authentication in todo.ly link
    When I send POST request 'api/items.json' with json
    """
    {
	    "Content": "Item Test Two",
	    "ProjectId": "3871264"
    }
    """

    Then I expected the response code 200
    And I expected the response body is equal to
    """
     {
      "Id": "EXCLUDE",
      "Content": "Item Test Two",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": 3871264,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": "EXCLUDE",
      "Priority": 4,
      "LastSyncedDateTime": "EXCLUDE",
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": "EXCLUDE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "EXCLUDE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "EXCLUDE"
    }
    """

     And I get the property value 'Id' and save on ID_ITEM
     And I get the property value 'Content' and save on NAME_ITEM

     When I send PUT request 'api/items/ID_ITEM.json' with json
     """
     {
       	"Content": "Item Test Two UPDATED",
	    "ProjectId": "3871264"
     }
     """
    # verify the response
     Then I expected the response code 200
     And I expected the response body is equal to
     """
     {
        "Id": ID_ITEM,
        "Content": "NAME_ITEM UPDATED",
        "ItemType": 1,
        "Checked": false,
        "ProjectId": 3871264,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": "EXCLUDE",
        "Priority": 4,
        "LastSyncedDateTime": "EXCLUDE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "EXCLUDE",
        "LastCheckedDate": null,
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "Notes": "",
        "InHistory": false,
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": "EXCLUDE"
      }
     """
     When I send DELETE request 'api/items/ID_ITEM.json' with json
     """

     """
     Then I expected the response code 200

     When I send GET request 'api/items/ID_ITEM.json' with json
     """
     """

     Then I expected the response code 200
     And I expected the response body is equal to
     """
     {
      "Id": ID_ITEM,
      "Content": "NAME_ITEM UPDATED",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": 3871264,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": "EXCLUDE",
      "Priority": 4,
      "LastSyncedDateTime": "EXCLUDE",
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": "EXCLUDE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "EXCLUDE",
      "Deleted": true,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "EXCLUDE"
     }
     """

