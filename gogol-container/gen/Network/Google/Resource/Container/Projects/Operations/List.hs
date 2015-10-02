{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Container.Projects.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all operations in a project, across all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsOperationsList@.
module Network.Google.Resource.Container.Projects.Operations.List
    (
    -- * REST Resource
      ProjectsOperationsListResource

    -- * Creating a Request
    , projectsOperationsList'
    , ProjectsOperationsList'

    -- * Request Lenses
    , polQuotaUser
    , polPrettyPrint
    , polUserIp
    , polKey
    , polProjectId
    , polOauthToken
    , polFields
    , polAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsOperationsList@ which the
-- 'ProjectsOperationsList'' request conforms to.
type ProjectsOperationsListResource =
     Capture "projectId" Text :>
       "operations" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] ListAggregatedOperationsResponse

-- | Lists all operations in a project, across all zones.
--
-- /See:/ 'projectsOperationsList'' smart constructor.
data ProjectsOperationsList' = ProjectsOperationsList'
    { _polQuotaUser   :: !(Maybe Text)
    , _polPrettyPrint :: !Bool
    , _polUserIp      :: !(Maybe Text)
    , _polKey         :: !(Maybe Text)
    , _polProjectId   :: !Text
    , _polOauthToken  :: !(Maybe Text)
    , _polFields      :: !(Maybe Text)
    , _polAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polQuotaUser'
--
-- * 'polPrettyPrint'
--
-- * 'polUserIp'
--
-- * 'polKey'
--
-- * 'polProjectId'
--
-- * 'polOauthToken'
--
-- * 'polFields'
--
-- * 'polAlt'
projectsOperationsList'
    :: Text -- ^ 'projectId'
    -> ProjectsOperationsList'
projectsOperationsList' pPolProjectId_ =
    ProjectsOperationsList'
    { _polQuotaUser = Nothing
    , _polPrettyPrint = True
    , _polUserIp = Nothing
    , _polKey = Nothing
    , _polProjectId = pPolProjectId_
    , _polOauthToken = Nothing
    , _polFields = Nothing
    , _polAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
polQuotaUser :: Lens' ProjectsOperationsList' (Maybe Text)
polQuotaUser
  = lens _polQuotaUser (\ s a -> s{_polQuotaUser = a})

-- | Returns response with indentations and line breaks.
polPrettyPrint :: Lens' ProjectsOperationsList' Bool
polPrettyPrint
  = lens _polPrettyPrint
      (\ s a -> s{_polPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
polUserIp :: Lens' ProjectsOperationsList' (Maybe Text)
polUserIp
  = lens _polUserIp (\ s a -> s{_polUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
polKey :: Lens' ProjectsOperationsList' (Maybe Text)
polKey = lens _polKey (\ s a -> s{_polKey = a})

-- | The Google Developers Console project ID or project number.
polProjectId :: Lens' ProjectsOperationsList' Text
polProjectId
  = lens _polProjectId (\ s a -> s{_polProjectId = a})

-- | OAuth 2.0 token for the current user.
polOauthToken :: Lens' ProjectsOperationsList' (Maybe Text)
polOauthToken
  = lens _polOauthToken
      (\ s a -> s{_polOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
polFields :: Lens' ProjectsOperationsList' (Maybe Text)
polFields
  = lens _polFields (\ s a -> s{_polFields = a})

-- | Data format for the response.
polAlt :: Lens' ProjectsOperationsList' Alt
polAlt = lens _polAlt (\ s a -> s{_polAlt = a})

instance GoogleRequest ProjectsOperationsList' where
        type Rs ProjectsOperationsList' =
             ListAggregatedOperationsResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsOperationsList'{..}
          = go _polQuotaUser (Just _polPrettyPrint) _polUserIp
              _polKey
              _polProjectId
              _polOauthToken
              _polFields
              (Just _polAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsOperationsListResource)
                      r
                      u