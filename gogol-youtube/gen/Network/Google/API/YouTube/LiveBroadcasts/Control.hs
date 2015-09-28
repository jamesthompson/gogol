{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.LiveBroadcasts.Control
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Controls the settings for a slate that can be displayed in the broadcast
-- stream.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveBroadcasts.control@.
module Network.Google.API.YouTube.LiveBroadcasts.Control
    (
    -- * REST Resource
      LiveBroadcastsControlAPI

    -- * Creating a Request
    , liveBroadcastsControl'
    , LiveBroadcastsControl'

    -- * Request Lenses
    , lbcQuotaUser
    , lbcPart
    , lbcPrettyPrint
    , lbcUserIp
    , lbcOnBehalfOfContentOwner
    , lbcKey
    , lbcOnBehalfOfContentOwnerChannel
    , lbcId
    , lbcDisplaySlate
    , lbcOauthToken
    , lbcWalltime
    , lbcOffsetTimeMs
    , lbcFields
    , lbcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.liveBroadcasts.control which the
-- 'LiveBroadcastsControl'' request conforms to.
type LiveBroadcastsControlAPI =
     "liveBroadcasts" :>
       "control" :>
         QueryParam "quotaUser" Text :>
           QueryParam "part" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "key" Text :>
                     QueryParam "onBehalfOfContentOwnerChannel" Text :>
                       QueryParam "id" Text :>
                         QueryParam "displaySlate" Bool :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "walltime" UTCTime :>
                               QueryParam "offsetTimeMs" Word64 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Post '[JSON] LiveBroadcast

-- | Controls the settings for a slate that can be displayed in the broadcast
-- stream.
--
-- /See:/ 'liveBroadcastsControl'' smart constructor.
data LiveBroadcastsControl' = LiveBroadcastsControl'
    { _lbcQuotaUser                     :: !(Maybe Text)
    , _lbcPart                          :: !Text
    , _lbcPrettyPrint                   :: !Bool
    , _lbcUserIp                        :: !(Maybe Text)
    , _lbcOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbcKey                           :: !(Maybe Text)
    , _lbcOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbcId                            :: !Text
    , _lbcDisplaySlate                  :: !(Maybe Bool)
    , _lbcOauthToken                    :: !(Maybe Text)
    , _lbcWalltime                      :: !(Maybe UTCTime)
    , _lbcOffsetTimeMs                  :: !(Maybe Word64)
    , _lbcFields                        :: !(Maybe Text)
    , _lbcAlt                           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsControl'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbcQuotaUser'
--
-- * 'lbcPart'
--
-- * 'lbcPrettyPrint'
--
-- * 'lbcUserIp'
--
-- * 'lbcOnBehalfOfContentOwner'
--
-- * 'lbcKey'
--
-- * 'lbcOnBehalfOfContentOwnerChannel'
--
-- * 'lbcId'
--
-- * 'lbcDisplaySlate'
--
-- * 'lbcOauthToken'
--
-- * 'lbcWalltime'
--
-- * 'lbcOffsetTimeMs'
--
-- * 'lbcFields'
--
-- * 'lbcAlt'
liveBroadcastsControl'
    :: Text -- ^ 'part'
    -> Text -- ^ 'id'
    -> LiveBroadcastsControl'
liveBroadcastsControl' pLbcPart_ pLbcId_ =
    LiveBroadcastsControl'
    { _lbcQuotaUser = Nothing
    , _lbcPart = pLbcPart_
    , _lbcPrettyPrint = True
    , _lbcUserIp = Nothing
    , _lbcOnBehalfOfContentOwner = Nothing
    , _lbcKey = Nothing
    , _lbcOnBehalfOfContentOwnerChannel = Nothing
    , _lbcId = pLbcId_
    , _lbcDisplaySlate = Nothing
    , _lbcOauthToken = Nothing
    , _lbcWalltime = Nothing
    , _lbcOffsetTimeMs = Nothing
    , _lbcFields = Nothing
    , _lbcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbcQuotaUser :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcQuotaUser
  = lens _lbcQuotaUser (\ s a -> s{_lbcQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbcPart :: Lens' LiveBroadcastsControl' Text
lbcPart = lens _lbcPart (\ s a -> s{_lbcPart = a})

-- | Returns response with indentations and line breaks.
lbcPrettyPrint :: Lens' LiveBroadcastsControl' Bool
lbcPrettyPrint
  = lens _lbcPrettyPrint
      (\ s a -> s{_lbcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbcUserIp :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcUserIp
  = lens _lbcUserIp (\ s a -> s{_lbcUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
lbcOnBehalfOfContentOwner :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcOnBehalfOfContentOwner
  = lens _lbcOnBehalfOfContentOwner
      (\ s a -> s{_lbcOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbcKey :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcKey = lens _lbcKey (\ s a -> s{_lbcKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
lbcOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcOnBehalfOfContentOwnerChannel
  = lens _lbcOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbcOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the YouTube live broadcast ID that uniquely
-- identifies the broadcast in which the slate is being updated.
lbcId :: Lens' LiveBroadcastsControl' Text
lbcId = lens _lbcId (\ s a -> s{_lbcId = a})

-- | The displaySlate parameter specifies whether the slate is being enabled
-- or disabled.
lbcDisplaySlate :: Lens' LiveBroadcastsControl' (Maybe Bool)
lbcDisplaySlate
  = lens _lbcDisplaySlate
      (\ s a -> s{_lbcDisplaySlate = a})

-- | OAuth 2.0 token for the current user.
lbcOauthToken :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcOauthToken
  = lens _lbcOauthToken
      (\ s a -> s{_lbcOauthToken = a})

-- | The walltime parameter specifies the wall clock time at which the
-- specified slate change will occur. The value is specified in ISO 8601
-- (YYYY-MM-DDThh:mm:ss.sssZ) format.
lbcWalltime :: Lens' LiveBroadcastsControl' (Maybe UTCTime)
lbcWalltime
  = lens _lbcWalltime (\ s a -> s{_lbcWalltime = a})

-- | The offsetTimeMs parameter specifies a positive time offset when the
-- specified slate change will occur. The value is measured in milliseconds
-- from the beginning of the broadcast\'s monitor stream, which is the time
-- that the testing phase for the broadcast began. Even though it is
-- specified in milliseconds, the value is actually an approximation, and
-- YouTube completes the requested action as closely as possible to that
-- time. If you do not specify a value for this parameter, then YouTube
-- performs the action as soon as possible. See the Getting started guide
-- for more details. Important: You should only specify a value for this
-- parameter if your broadcast stream is delayed.
lbcOffsetTimeMs :: Lens' LiveBroadcastsControl' (Maybe Word64)
lbcOffsetTimeMs
  = lens _lbcOffsetTimeMs
      (\ s a -> s{_lbcOffsetTimeMs = a})

-- | Selector specifying which fields to include in a partial response.
lbcFields :: Lens' LiveBroadcastsControl' (Maybe Text)
lbcFields
  = lens _lbcFields (\ s a -> s{_lbcFields = a})

-- | Data format for the response.
lbcAlt :: Lens' LiveBroadcastsControl' Alt
lbcAlt = lens _lbcAlt (\ s a -> s{_lbcAlt = a})

instance GoogleRequest LiveBroadcastsControl' where
        type Rs LiveBroadcastsControl' = LiveBroadcast
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsControl'{..}
          = go _lbcQuotaUser (Just _lbcPart)
              (Just _lbcPrettyPrint)
              _lbcUserIp
              _lbcOnBehalfOfContentOwner
              _lbcKey
              _lbcOnBehalfOfContentOwnerChannel
              (Just _lbcId)
              _lbcDisplaySlate
              _lbcOauthToken
              _lbcWalltime
              _lbcOffsetTimeMs
              _lbcFields
              (Just _lbcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsControlAPI)
                      r
                      u