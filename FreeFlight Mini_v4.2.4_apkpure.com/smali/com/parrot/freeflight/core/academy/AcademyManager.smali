.class public Lcom/parrot/freeflight/core/academy/AcademyManager;
.super Ljava/lang/Object;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$EmptyRequestListener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;,
        Lcom/parrot/freeflight/core/academy/AcademyManager$UploadErrorType;
    }
.end annotation


# static fields
.field private static final CHOOSE_GOOGLE_ACCOUNT_REQUEST_CODE:I = 0x1

.field private static final CREATE_PROFILE:I = 0xc

.field private static final DELETE_PROFILE:I = 0xa

.field private static final GOOGLE_NEEDS_AUTHENTICATION_REQUEST_CODE:I = 0x2

.field public static final IS_CONNECTED_SHARED_PREF_KEY:Ljava/lang/String; = "academy_is_connected"

.field public static final PASSWORD_SHARED_PREF_KEY:Ljava/lang/String; = "academy_password"

.field private static final REQUEST_AVATAR:I = 0x4

.field private static final REQUEST_CONNECTION:I = 0x1

.field private static final REQUEST_COUNTRY:I = 0x8

.field public static final REQUEST_ID_ERROR:I = -0x1

.field private static final REQUEST_PILOT:I = 0x3

.field private static final REQUEST_PILOT_BY_USERNAME:I = 0xd

.field private static final REQUEST_PROFILE:I = 0x2

.field private static final REQUEST_RESET_PASSWORD:I = 0x6

.field private static final SEND_RUN_BY_EMAIL:I = 0x14

.field public static final SERIALS_SENT_SHARED_PREF_KEY:Ljava/lang/String; = "serials_sent"

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "academy_shared_preferences"

.field public static final SKY_REGISTRATION_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "sky_registration"

.field private static final TAG:Ljava/lang/String; = "AcademyManagerTAG"

.field private static final UPDATE_AVATAR:I = 0x5

.field private static final UPDATE_EMAIL:I = 0xb

.field private static final UPDATE_PROFILE:I = 0x9

.field public static final UPLOAD_ERROR_CONNECTION:I = 0x1

.field public static final UPLOAD_ERROR_SERVICE_DISABLED:I = 0x5

.field public static final UPLOAD_ERROR_SERVICE_INVALID:I = 0x6

.field public static final UPLOAD_ERROR_SERVICE_MISSING:I = 0x2

.field public static final UPLOAD_ERROR_SERVICE_UPDATE_REQUIRED:I = 0x4

.field public static final UPLOAD_ERROR_SERVICE_UPDATING:I = 0x3

.field public static final UPLOAD_ERROR_UNKNOWN:I = -0x1

.field public static final UPLOAD_ERROR_USER_ACTION:I = 0x0

.field public static final USERNAME_SHARED_PREF_KEY:Ljava/lang/String; = "academy_username"


# instance fields
.field private mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAcademyManagerIntent:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCountryList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGoogleUploadingCancelled:Z

.field private mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGoogleUploadingType:I

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInternetAvailable:Z

.field private mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNetworkStatusChangedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOffLineListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRegisteringSkyController:Z

.field private final mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunningRequests:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSocialNetworkServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSocialNetworkServiceIntent:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStopAcademyServiceRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mYoutubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 192
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$1;

    .line 194
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$1;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$2;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mNetworkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$3;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 293
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$4;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mYoutubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .line 348
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$5;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 455
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$7;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$7;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mStopAcademyServiceRunnable:Ljava/lang/Runnable;

    .line 1394
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$21;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$21;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mOffLineListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 403
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    .line 404
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManagerIntent:Landroid/content/Intent;

    .line 405
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManagerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceIntent:Landroid/content/Intent;

    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-string v1, "academy_shared_preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunningRequests:Ljava/util/List;

    .line 410
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->autoConnect()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/core/academy/AcademyManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/core/academy/AcademyManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/core/academy/AcademyManager;F)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # F

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadProgress(F)V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadEnded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setConnected(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight3/ARSocialNetworkService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARSocialNetworkService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mYoutubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManagerIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "x2"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->buildErrorMessage(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2602(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRegisteringSkyController:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestProfile(Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    return-void
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/academy/AcademyManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunningRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->onNetworkChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    return-object p1
.end method

.method private autoConnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 469
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "academy_is_connected"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "academy_username"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "login":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "academy_password"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$EmptyRequestListener;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$EmptyRequestListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I

    .line 476
    .end local v0    # "login":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildErrorMessage(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Ljava/lang/String;
    .locals 3
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "academyErrors"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1220
    :cond_0
    :goto_0
    return-object v0

    .line 1217
    :cond_1
    if-eqz p2, :cond_0

    .line 1218
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getAcademyErrorMsg(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static checkEmailErrorMessage(Ljava/lang/String;)I
    .locals 2
    .param p0, "originMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1265
    const/4 v0, 0x0

    .line 1266
    .local v0, "errorResId":I
    if-eqz p0, :cond_0

    .line 1267
    const-string v1, "21001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1268
    const v0, 0x7f080063

    .line 1273
    :cond_0
    :goto_0
    return v0

    .line 1269
    :cond_1
    const-string v1, "21002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1270
    const v0, 0x7f080061

    goto :goto_0
.end method

.method private static checkGeneralErrorMessage(Ljava/lang/String;)I
    .locals 2
    .param p0, "originMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, "errorResId":I
    if-eqz p0, :cond_0

    .line 1250
    const-string v1, "10001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    const v0, 0x7f080067

    .line 1260
    :cond_0
    :goto_0
    return v0

    .line 1252
    :cond_1
    const-string v1, "10002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1253
    const v0, 0x7f080066

    goto :goto_0

    .line 1254
    :cond_2
    const-string v1, "10010"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1255
    const v0, 0x7f080068

    goto :goto_0

    .line 1256
    :cond_3
    const-string v1, "20001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "20002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "22002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    :cond_4
    const v0, 0x7f080060

    goto :goto_0
.end method

.method private getAcademyErrorMsg(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Ljava/lang/String;
    .locals 10
    .param p1, "academyErrors"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkGeneralErrorMessage(Ljava/lang/String;)I

    move-result v3

    .line 1227
    .local v3, "userNameError":I
    if-eqz v3, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v7, 0x7f080073

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkGeneralErrorMessage(Ljava/lang/String;)I

    move-result v1

    .line 1231
    .local v1, "passwordError":I
    if-eqz v1, :cond_1

    .line 1232
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v7, 0x7f08006f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkGeneralErrorMessage(Ljava/lang/String;)I

    move-result v0

    .line 1235
    .local v0, "emailError":I
    if-eqz v0, :cond_3

    .line 1236
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0800a1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1238
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->checkEmailErrorMessage(Ljava/lang/String;)I

    move-result v0

    .line 1239
    if-eqz v0, :cond_2

    .line 1240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private googleUploadCancelled()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingCancelled:Z

    .line 1161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    .line 1162
    return-void
.end method

.method private googleUploadEnded(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1173
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    if-nez v2, :cond_0

    .line 1174
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    .line 1200
    :goto_0
    return-void

    .line 1176
    :cond_0
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;

    invoke-direct {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;-><init>()V

    .line 1177
    .local v1, "media":Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->setVisible(Z)V

    .line 1178
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v2, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->setFilename(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v1, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->setUrl(Ljava/lang/String;)V

    .line 1180
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-boolean v2, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v2, :cond_1

    .line 1182
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v3, v3, Lcom/parrot/freeflight/core/academy/MediaInfos;->id:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/parrot/freeflight/core/academy/AcademyManager$20;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$20;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthPostRunVideo(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_1
    :goto_1
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/MediaManager;->mediaUploaded(Lcom/parrot/freeflight/core/academy/MediaInfos;)V

    .line 1194
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    if-eqz v2, :cond_2

    .line 1195
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    iget v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-interface {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;->uploadSucceeded(ILcom/parrot/freeflight/core/academy/MediaInfos;)V

    .line 1197
    :cond_2
    iput v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    .line 1198
    iput-object v7, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    goto :goto_1
.end method

.method private googleUploadFailed(I)V
    .locals 2
    .param p1, "errorType"    # I
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    invoke-interface {v0, v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;->uploadFailed(II)V

    .line 1207
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    .line 1208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 1209
    return-void
.end method

.method private googleUploadProgress(F)V
    .locals 2
    .param p1, "progress"    # F
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingCancelled:Z

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    invoke-interface {v0, v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;->uploadProgress(IF)V

    .line 1169
    :cond_0
    return-void
.end method

.method private googleUploadStarted(ILcom/parrot/freeflight/core/academy/MediaInfos;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "infos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1150
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 1151
    iput p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    .line 1152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingCancelled:Z

    .line 1153
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;->uploadStarted(I)V

    .line 1156
    :cond_0
    return-void
.end method

.method private notifyListener()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;->onChange()V

    .line 1002
    :cond_0
    return-void
.end method

.method private onNetworkChanged(Z)V
    .locals 4
    .param p1, "internetAvailable"    # Z

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    .line 1278
    const-string v1, "AcademyManagerTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->onNetworkChanged(Z)V

    .line 1281
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1282
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->autoConnect()V
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestProfile(Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .prologue
    const/4 v4, 0x0

    .line 495
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v1, :cond_0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;Lcom/parrot/freeflight/core/academy/AcademyManager$1;)V

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthGetProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 500
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    goto :goto_0
.end method

.method private setConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 647
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 648
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "academy_is_connected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 650
    return-void
.end method

.method private signInToGoogle(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 1094
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-string v5, "https://www.googleapis.com/auth/youtube.upload"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    .line 1095
    .local v1, "googleCredential":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 1096
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 1098
    .local v2, "result":I
    sparse-switch v2, :sswitch_data_0

    .line 1118
    iget-boolean v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    if-eqz v4, :cond_0

    const/4 v3, -0x1

    :cond_0
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    .line 1121
    :goto_0
    return-void

    .line 1100
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1103
    :sswitch_1
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1106
    :sswitch_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1109
    :sswitch_3
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1112
    :sswitch_4
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1115
    :sswitch_5
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1098
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private uploadOnYoutube(Lcom/parrot/freeflight/core/academy/MediaInfos;Ljava/lang/String;)V
    .locals 8
    .param p1, "infos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "accountName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 1083
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080630

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    iget-object v6, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->date:Ljava/lang/String;

    aput-object v6, v2, v0

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v1, 0x7f08062e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const v1, 0x7f08062f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1087
    .local v5, "tags":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iget-object v2, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight3/ARSocialNetworkService;->beginYoutubeUploadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "tags":Ljava/lang/String;
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAllRequests()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v0, :cond_0

    .line 489
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 491
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelAllRequests()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    goto :goto_0
.end method

.method public cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 1
    .param p1, "requestId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v0, :cond_0

    .line 481
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    goto :goto_0
.end method

.method public cancelUploadOnYoutube()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->cancelYoutubeUploadProcess()V

    .line 1059
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    if-nez v0, :cond_1

    .line 1060
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadCancelled()V

    .line 1062
    :cond_1
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I
    .locals 7
    .param p1, "login"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "password"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 613
    const/4 v2, -0x1

    .line 614
    .local v2, "requestId":I
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 616
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v4, :cond_0

    .line 617
    sget-object v4, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v4, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 618
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v2

    .line 643
    .end local v2    # "requestId":I
    .local v3, "requestId":I
    :goto_0
    return v3

    .line 623
    .end local v3    # "requestId":I
    .restart local v2    # "requestId":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v5, Lcom/parrot/freeflight/core/academy/AcademyManager$12;

    invoke-direct {v5, p0, v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$12;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;)I

    move-result v2

    .line 636
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunningRequests:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iput v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v2

    .line 643
    .end local v2    # "requestId":I
    .restart local v3    # "requestId":I
    goto :goto_0

    .line 638
    .end local v3    # "requestId":I
    .restart local v2    # "requestId":I
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 640
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v4

    iput-object v4, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 641
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public createProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I
    .locals 7
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v6, 0xc

    .line 506
    const/4 v2, -0x1

    .line 507
    .local v2, "requestId":I
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 509
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v4, :cond_0

    .line 510
    sget-object v4, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v4, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 511
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v2

    .line 531
    .end local v2    # "requestId":I
    .local v3, "requestId":I
    :goto_0
    return v3

    .line 516
    .end local v3    # "requestId":I
    .restart local v2    # "requestId":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v5, Lcom/parrot/freeflight/core/academy/AcademyManager$8;

    invoke-direct {v5, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$8;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v4, p1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAnonymousCreationProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 531
    .end local v2    # "requestId":I
    .restart local v3    # "requestId":I
    goto :goto_0

    .line 526
    .end local v3    # "requestId":I
    .restart local v2    # "requestId":I
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 528
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v4

    iput-object v4, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 529
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public deleteProfile(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xa

    .line 561
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 563
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_0

    .line 564
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 565
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    :goto_0
    return-void

    .line 570
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    new-instance v4, Lcom/parrot/freeflight/core/academy/AcademyManager$10;

    invoke-direct {v4, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$10;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthDeleteProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 581
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 582
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->onAcademyDisconnected()V

    .line 666
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->disconnect()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->cancel(Z)Z

    .line 672
    :cond_1
    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 673
    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 674
    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 675
    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    .line 677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setConnected(Z)V

    .line 678
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 679
    return-void
.end method

.method public getARAcademyManager()Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    return-object v0
.end method

.method public getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    return-object v0
.end method

.method public getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    return-object v0
.end method

.method public isSignedInToFacebook()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->isSignedInToFacebook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStillRunning(I)Z
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunningRequests:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUserConnected()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 657
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "academy_is_connected"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 658
    .local v0, "isConnected":Z
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "academy_username"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "login":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "academy_password"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "password":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public onFacebookActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight3/ARSocialNetworkService;->onFBActivityResult(IILandroid/content/Intent;)V

    .line 1025
    const/4 v0, 0x1

    .line 1027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGoogleActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1124
    packed-switch p1, :pswitch_data_0

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1126
    :pswitch_0
    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1127
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    if-eqz v2, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->uploadOnYoutube(Lcom/parrot/freeflight/core/academy/MediaInfos;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_1
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 1135
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1139
    :pswitch_1
    if-eq p2, v1, :cond_0

    .line 1140
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadFailed(I)V

    goto :goto_0

    .line 1124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 988
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 989
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 990
    return-void
.end method

.method public registerSkyController()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 857
    iget-boolean v9, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRegisteringSkyController:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v9, :cond_1

    .line 897
    :cond_0
    return-void

    .line 860
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRegisteringSkyController:Z

    .line 862
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v7, "skyControllerSerials":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-string v10, "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 864
    .local v0, "deviceControllerPrefs":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    const-string v10, "sky_registration"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 865
    .local v8, "skyRegistrationPrefs":Landroid/content/SharedPreferences;
    const-string v9, "serials_sent"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 866
    .local v5, "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 867
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 869
    .restart local v5    # "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 870
    .local v2, "newSerialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 871
    .local v3, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 872
    .local v4, "serial":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sget-object v11, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v11}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 873
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 874
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 877
    .end local v4    # "serial":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 878
    .restart local v4    # "serial":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 879
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;

    invoke-direct {v6}, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;-><init>()V

    .line 880
    .local v6, "skyController":Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    invoke-virtual {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;->setSerial(Ljava/lang/String;)V

    .line 882
    :try_start_0
    iget-object v10, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v11, Lcom/parrot/freeflight/core/academy/AcademyManager$17;

    invoke-direct {v11, p0, v2, v4, v8}, Lcom/parrot/freeflight/core/academy/AcademyManager$17;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/util/Set;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-virtual {v10, v6, v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthRegisteredSkyController(Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    goto :goto_1
.end method

.method public removeRun(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 780
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->removeRun(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public requestAllCountry(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x8

    .line 933
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 934
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 935
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mCountryList:Ljava/util/List;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 936
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 965
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_1

    .line 941
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 942
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 947
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$19;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$19;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncGetAllCountry(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 962
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 963
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 710
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 711
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 713
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 730
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-nez v2, :cond_1

    .line 718
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 719
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    if-eqz v2, :cond_2

    .line 724
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->addListener(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0

    .line 726
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "avatarUrl":Ljava/lang/String;
    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .line 728
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mDownloadAvatarTask:Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 776
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 777
    return-void
.end method

.method public requestOtherUserAvatar(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "pilot"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 734
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-nez v2, :cond_0

    .line 735
    new-instance v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 736
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 737
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    .end local v0    # "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    :goto_0
    return-void

    .line 741
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 742
    .local v1, "task":Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public requestPasswordReset(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x6

    .line 824
    const/4 v2, -0x1

    .line 825
    .local v2, "requestId":I
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 827
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v5, :cond_0

    .line 828
    sget-object v5, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v5, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 829
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v2

    .line 853
    .end local v2    # "requestId":I
    .local v3, "requestId":I
    :goto_0
    return v3

    .line 834
    .end local v3    # "requestId":I
    .restart local v2    # "requestId":I
    :cond_0
    :try_start_0
    new-instance v4, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;

    invoke-direct {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;-><init>()V

    .line 835
    .local v4, "resetPassword":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    invoke-virtual {v4, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;->setEmail(Ljava/lang/String;)V

    .line 836
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v6, Lcom/parrot/freeflight/core/academy/AcademyManager$16;

    invoke-direct {v6, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$16;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v5, v4, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncPostResetPassword(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;)I

    move-result v2

    .line 846
    iput v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "resetPassword":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    :goto_1
    move v3, v2

    .line 853
    .end local v2    # "requestId":I
    .restart local v3    # "requestId":I
    goto :goto_0

    .line 847
    .end local v3    # "requestId":I
    .restart local v2    # "requestId":I
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 849
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v5

    iput-object v5, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 850
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public requestPilot(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x3

    .line 788
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 797
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-nez v2, :cond_1

    .line 798
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 799
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 821
    :goto_0
    return-void

    .line 804
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getId()I

    move-result v3

    new-instance v4, Lcom/parrot/freeflight/core/academy/AcademyManager$15;

    invoke-direct {v4, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$15;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthGetPilot(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 818
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 819
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public requestPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0xd

    .line 905
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 906
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_0

    .line 907
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 908
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 930
    :goto_0
    return-void

    .line 913
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$18;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$18;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthGetPilotByUsername(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 927
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 928
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendRunByEmail(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 6
    .param p1, "run"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/16 v5, 0x14

    .line 683
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 685
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_0

    .line 686
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 687
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    :goto_0
    return-void

    .line 692
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v3

    new-instance v4, Lcom/parrot/freeflight/core/academy/AcademyManager$13;

    invoke-direct {v4, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$13;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthPostRunToEmail(ILcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 703
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 704
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 978
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 979
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 980
    return-void
.end method

.method public setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight3/ARSocialNetworkService;->setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    .line 1008
    :cond_0
    return-void
.end method

.method public setGoogleListener(Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    .line 1049
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;->uploadStarted(I)V

    .line 1052
    :cond_0
    return-void
.end method

.method public setProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 973
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 974
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->notifyListener()V

    .line 975
    return-void
.end method

.method public signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight3/ARSocialNetworkService;->signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1013
    const/4 v0, 0x1

    .line 1015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 414
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mStopAcademyServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManagerIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 416
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.parrot.freeflight4.NetworkStatus.notificationKey"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mNetworkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 422
    new-instance v1, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    new-instance v2, Lcom/parrot/freeflight/core/academy/AcademyManager$6;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$6;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    .line 428
    .local v1, "internetChecker":Lcom/parrot/freeflight/network/InternetConnectionChecker;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->performCheck(Landroid/content/Context;)V

    .line 430
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mOffLineListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 431
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->start()V

    .line 432
    return-void
.end method

.method public startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 1388
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stop()V

    .line 436
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 437
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 438
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 439
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelAllRequests()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/ARSocialNetworkService;->setYoutubeManagerListener(Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 445
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 446
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mNetworkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mInternetAvailable:Z

    .line 451
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mStopAcademyServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    return-void
.end method

.method public stopPudDownload()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopPudDownload()V

    .line 1392
    return-void
.end method

.method public syncRunList()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkAcademyServer()V

    .line 773
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 993
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    if-ne p1, v0, :cond_0

    .line 994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 996
    :cond_0
    return-void
.end method

.method public updateAvatar(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 5
    .param p1, "picturePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x5

    .line 746
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 748
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_0

    .line 749
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 750
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 769
    :goto_0
    return-void

    .line 755
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$14;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$14;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthUpdateAvatar(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 766
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 767
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateEmail(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 5
    .param p1, "email"    # Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0xb

    .line 587
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 589
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_0

    .line 590
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 591
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    :goto_0
    return-void

    .line 596
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$11;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$11;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthUpdateEmail(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 607
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 608
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x9

    .line 535
    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {v1, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 537
    .local v1, "holder":Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    if-nez v2, :cond_0

    .line 538
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 539
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 558
    :goto_0
    return-void

    .line 544
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    new-instance v3, Lcom/parrot/freeflight/core/academy/AcademyManager$9;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$9;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthSetProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 555
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 556
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateRunGrade(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grade"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mRunOfflineManager:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->updateRunGrade(Ljava/lang/String;IZ)V

    .line 785
    return-void
.end method

.method public uploadOnFacebook(Landroid/app/Activity;Lcom/parrot/arsdk/armedia/ARMediaObject;Ljava/lang/String;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaObject"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "appName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1039
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-virtual {p2}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    if-ne v3, v4, :cond_0

    move v2, v6

    :cond_0
    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight3/ARSocialNetworkService;->beginFacebookUploadProcess(Ljava/lang/String;ZLandroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1043
    :goto_0
    return v6

    :cond_1
    move v6, v2

    goto :goto_0
.end method

.method public uploadOnFacebook(Landroid/app/Activity;Lcom/parrot/freeflight/core/academy/MediaInfos;Ljava/lang/String;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaInfos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "appName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    if-nez v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mSocialNetworkService:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iget-object v1, p2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight3/ARSocialNetworkService;->beginFacebookUploadProcess(Ljava/lang/String;ZLandroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x1

    .line 1035
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uploadOnYoutube(Landroid/app/Activity;Lcom/parrot/freeflight/core/academy/MediaInfos;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "infos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1066
    iget v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mGoogleUploadingType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1079
    :goto_0
    return v1

    .line 1070
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->googleUploadStarted(ILcom/parrot/freeflight/core/academy/MediaInfos;)V

    .line 1071
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->getAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->signInToGoogle(Landroid/app/Activity;)V

    .line 1079
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->uploadOnYoutube(Lcom/parrot/freeflight/core/academy/MediaInfos;Ljava/lang/String;)V

    goto :goto_1
.end method
