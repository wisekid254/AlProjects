page 50200 "Mwenyehaki Sacco"
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

        }
    }

    actions
    {
        area(Creation)
        {
            action(ActionBarAction)
            {
                RunObject = Page ObjectName;
            }
        }
        area(Sections)
        {
            group(SectionsGroupName)
            {
                action(SectionsAction)
                {
                    RunObject = Page ObjectName;
                }
            }
        }
        area(Embedding)
        {
            action(EmbeddingAction)
            {
                RunObject = Page ObjectName;
            }
        }
    }
}