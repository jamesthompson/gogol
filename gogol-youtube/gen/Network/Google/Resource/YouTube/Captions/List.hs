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
-- Module      : Network.Google.Resource.YouTube.Captions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsList@.
module Network.Google.Resource.YouTube.Captions.List
    (
    -- * REST Resource
      CaptionsListResource

    -- * Creating a Request
    , captionsList'
    , CaptionsList'

    -- * Request Lenses
    , cllOnBehalfOf
    , cllQuotaUser
    , cllPart
    , cllPrettyPrint
    , cllUserIp
    , cllOnBehalfOfContentOwner
    , cllVideoId
    , cllKey
    , cllId
    , cllOauthToken
    , cllFields
    , cllAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsList@ which the
-- 'CaptionsList'' request conforms to.
type CaptionsListResource =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "part" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "videoId" Text :>
                     QueryParam "key" Text :>
                       QueryParam "id" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] CaptionListResponse

-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ 'captionsList'' smart constructor.
data CaptionsList' = CaptionsList'
    { _cllOnBehalfOf             :: !(Maybe Text)
    , _cllQuotaUser              :: !(Maybe Text)
    , _cllPart                   :: !Text
    , _cllPrettyPrint            :: !Bool
    , _cllUserIp                 :: !(Maybe Text)
    , _cllOnBehalfOfContentOwner :: !(Maybe Text)
    , _cllVideoId                :: !Text
    , _cllKey                    :: !(Maybe Text)
    , _cllId                     :: !(Maybe Text)
    , _cllOauthToken             :: !(Maybe Text)
    , _cllFields                 :: !(Maybe Text)
    , _cllAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllOnBehalfOf'
--
-- * 'cllQuotaUser'
--
-- * 'cllPart'
--
-- * 'cllPrettyPrint'
--
-- * 'cllUserIp'
--
-- * 'cllOnBehalfOfContentOwner'
--
-- * 'cllVideoId'
--
-- * 'cllKey'
--
-- * 'cllId'
--
-- * 'cllOauthToken'
--
-- * 'cllFields'
--
-- * 'cllAlt'
captionsList'
    :: Text -- ^ 'part'
    -> Text -- ^ 'videoId'
    -> CaptionsList'
captionsList' pCllPart_ pCllVideoId_ =
    CaptionsList'
    { _cllOnBehalfOf = Nothing
    , _cllQuotaUser = Nothing
    , _cllPart = pCllPart_
    , _cllPrettyPrint = True
    , _cllUserIp = Nothing
    , _cllOnBehalfOfContentOwner = Nothing
    , _cllVideoId = pCllVideoId_
    , _cllKey = Nothing
    , _cllId = Nothing
    , _cllOauthToken = Nothing
    , _cllFields = Nothing
    , _cllAlt = JSON
    }

-- | ID of the Google+ Page for the channel that the request is on behalf of.
cllOnBehalfOf :: Lens' CaptionsList' (Maybe Text)
cllOnBehalfOf
  = lens _cllOnBehalfOf
      (\ s a -> s{_cllOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' CaptionsList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
cllPart :: Lens' CaptionsList' Text
cllPart = lens _cllPart (\ s a -> s{_cllPart = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' CaptionsList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' CaptionsList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
cllOnBehalfOfContentOwner :: Lens' CaptionsList' (Maybe Text)
cllOnBehalfOfContentOwner
  = lens _cllOnBehalfOfContentOwner
      (\ s a -> s{_cllOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies the YouTube video ID of the video for
-- which the API should return caption tracks.
cllVideoId :: Lens' CaptionsList' Text
cllVideoId
  = lens _cllVideoId (\ s a -> s{_cllVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' CaptionsList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the caption resources that should be retrieved. Each ID must identify a
-- caption track associated with the specified video.
cllId :: Lens' CaptionsList' (Maybe Text)
cllId = lens _cllId (\ s a -> s{_cllId = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' CaptionsList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' CaptionsList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' CaptionsList' Alt
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest CaptionsList' where
        type Rs CaptionsList' = CaptionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsList'{..}
          = go _cllOnBehalfOf _cllQuotaUser (Just _cllPart)
              (Just _cllPrettyPrint)
              _cllUserIp
              _cllOnBehalfOfContentOwner
              (Just _cllVideoId)
              _cllKey
              _cllId
              _cllOauthToken
              _cllFields
              (Just _cllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CaptionsListResource)
                      r
                      u