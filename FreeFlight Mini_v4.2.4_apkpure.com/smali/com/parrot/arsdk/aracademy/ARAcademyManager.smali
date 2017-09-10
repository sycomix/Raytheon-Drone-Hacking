.class public Lcom/parrot/arsdk/aracademy/ARAcademyManager;
.super Landroid/app/Service;
.source "ARAcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;
    }
.end annotation


# static fields
.field private static final ARACADEMY_MANAGER_TAG:Ljava/lang/String; = "ARAcademyManager"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private initOk:Z

.field private manager:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 162
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;-><init>(Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->binder:Landroid/os/IBinder;

    return-void
.end method

.method private native nativeAsyncAnonymousCreationProfile(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthAddDrone(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthDeleteDrone(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthDeleteHotspot(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthDeleteProfile(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthDeleteRun(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetAvatar(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetCountry(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetHotspot(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetListDrones(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetPilot(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetPilotByUsername(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetPilotStatistics(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetPrivacy(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetProfile(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetRun(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetRunDetails(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetRunJsonDetails(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetRuns(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthGetRunsInterval(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthInviteFriends(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthNewHotspot(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthPostLang(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthPostRunPhoto(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthPostRunToEmail(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthPostRunVideo(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthPostRunsGradeVisible(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthRegisteredSkyController(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthRenameDrone(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthSetPrivacy(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthSetProfile(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthSetRun(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthUpdateAvatar(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthUpdateEmail(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncAuthUpdateHotspot(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncConnect(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetAllCountry(JLcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetAllHotspots(JLcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetHotspot(JILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetHotspotClusterDetail(JLjava/lang/String;IIILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetHotspotClusters(JDDDDILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetRunDetails(JILcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetRuns(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetRunsCluster(JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetRunsClusters(JDDDDILcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncGetRunsInterval(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeAsyncPostResetPassword(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeCancelAllRequests(J)I
.end method

.method private native nativeCancelRequest(JI)I
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeDisconnect(J)I
.end method

.method private native nativeGetUserName(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeIsConnected(J)I
.end method

.method private native nativeNew()J
.end method

.method private native nativeSyncAnonymousCreationProfile(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthAddDrone(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthDeleteDrone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthDeleteHotspot(JILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthDeleteProfile(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthDeleteRun(JILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetAvatar(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetCountry(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetHotspot(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetListDrones(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetPilot(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetPilotByUsername(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetPilotStatistics(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetPrivacy(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetProfile(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetRun(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetRunDetails(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetRunJsonDetails(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetRuns(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthGetRunsInterval(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthInviteFriends(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthNewHotspot(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthPostLang(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthPostRunPhoto(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthPostRunToEmail(JILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthPostRunVideo(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthPostRunsGradeVisible(JILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthRegisteredSkyController(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthRenameDrone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthSetPrivacy(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthSetProfile(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthSetRun(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthUpdateAvatar(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthUpdateEmail(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncAuthUpdateHotspot(JILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncConnect(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSyncGetAllCountry(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetAllHotspots(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetHotspot(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetHotspotClusterDetail(JLjava/lang/String;III)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetHotspotClusters(JDDDDI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetRunDetails(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetRuns(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetRunsCluster(JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetRunsClusters(JDDDDI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncGetRunsInterval(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method

.method private native nativeSyncPostResetPassword(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation
.end method


# virtual methods
.method public GetUserName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 398
    const-string v0, ""

    .line 399
    .local v0, "userName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 401
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeGetUserName(J)Ljava/lang/String;

    move-result-object v0

    .line 409
    return-object v0

    .line 406
    :cond_0
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-direct {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1
.end method

.method public asyncAnonymousCreationProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1886
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1887
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1888
    .local v2, "requestID":I
    const-string v1, ""

    .line 1890
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1892
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1895
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 1898
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1899
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAnonymousCreationProfile(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;)I

    move-result v2

    .line 1904
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 1907
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 1910
    :cond_2
    return v2
.end method

.method public asyncAuthAddDrone(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2159
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2160
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2161
    .local v2, "requestID":I
    const-string v1, ""

    .line 2163
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2165
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2168
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 2171
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2172
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthAddDrone(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;)I

    move-result v2

    .line 2177
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 2180
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 2183
    :cond_2
    return v2
.end method

.method public asyncAuthDeleteDrone(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyDrone;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;)I
    .locals 8
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2375
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2376
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 2377
    .local v7, "requestID":I
    const-string v5, ""

    .line 2379
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2381
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2384
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 2387
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2388
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthDeleteDrone(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;)I

    move-result v7

    .line 2393
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 2396
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 2399
    :cond_2
    return v7
.end method

.method public asyncAuthDeleteHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;)I
    .locals 8
    .param p1, "hotspotId"    # I
    .param p2, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4058
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4059
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 4060
    .local v7, "requestID":I
    const-string v5, ""

    .line 4062
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4064
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4067
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 4070
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4071
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthDeleteHotspot(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;)I

    move-result v7

    .line 4076
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 4079
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 4082
    :cond_2
    return v7
.end method

.method public asyncAuthDeleteProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;)I
    .locals 6
    .param p1, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1172
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1173
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1174
    .local v2, "requestID":I
    const-string v1, ""

    .line 1176
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1178
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1181
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 1184
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthDeleteProfile(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;)I

    move-result v2

    .line 1190
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 1193
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 1196
    :cond_2
    return v2
.end method

.method public asyncAuthDeleteRun(ILcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;)I
    .locals 8
    .param p1, "runId"    # I
    .param p2, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5909
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5910
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 5911
    .local v7, "requestID":I
    const-string v5, ""

    .line 5913
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5915
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5918
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 5921
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5922
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5924
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthDeleteRun(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;)I

    move-result v7

    .line 5927
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 5930
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 5933
    :cond_2
    return v7
.end method

.method public asyncAuthGetAvatar(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1537
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1538
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1540
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1542
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1545
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1547
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetAvatar(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;)I

    move-result v1

    .line 1550
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1553
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1556
    :cond_2
    return v1
.end method

.method public asyncAuthGetCountry(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;)I
    .locals 4
    .param p1, "countryID"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 430
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 432
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 434
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 437
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 439
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetCountry(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;)I

    move-result v1

    .line 442
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 445
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 448
    :cond_2
    return v1
.end method

.method public asyncAuthGetHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;)I
    .locals 4
    .param p1, "hotspotId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3553
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3554
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 3556
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3558
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3561
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 3563
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetHotspot(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;)I

    move-result v1

    .line 3566
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 3569
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 3572
    :cond_2
    return v1
.end method

.method public asyncAuthGetListDrones(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2014
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2015
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 2017
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2019
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2022
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2024
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetListDrones(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;)I

    move-result v1

    .line 2027
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2030
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2033
    :cond_2
    return v1
.end method

.method public asyncAuthGetPilot(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;)I
    .locals 4
    .param p1, "pilotID"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1272
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1273
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1275
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1277
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1280
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1282
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetPilot(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;)I

    move-result v1

    .line 1285
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1288
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1291
    :cond_2
    return v1
.end method

.method public asyncAuthGetPilotByUsername(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;)I
    .locals 4
    .param p1, "pilotUsername"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1403
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1404
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1406
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1408
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1411
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1413
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetPilotByUsername(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;)I

    move-result v1

    .line 1416
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1419
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1422
    :cond_2
    return v1
.end method

.method public asyncAuthGetPilotStatistics(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;)I
    .locals 4
    .param p1, "pilotUsername"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1751
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1752
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1754
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1756
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1759
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1761
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetPilotStatistics(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;)I

    move-result v1

    .line 1764
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1767
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1770
    :cond_2
    return v1
.end method

.method public asyncAuthGetPrivacy(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 707
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 708
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 710
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 712
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 715
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 717
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetPrivacy(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;)I

    move-result v1

    .line 720
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 723
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 726
    :cond_2
    return v1
.end method

.method public asyncAuthGetProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 931
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 932
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 934
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 936
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 939
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 941
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetProfile(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;)I

    move-result v1

    .line 944
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 947
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 950
    :cond_2
    return v1
.end method

.method public asyncAuthGetRun(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;)I
    .locals 4
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4720
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4721
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 4723
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4725
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4728
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 4730
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetRun(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;)I

    move-result v1

    .line 4733
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 4736
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 4739
    :cond_2
    return v1
.end method

.method public asyncAuthGetRunDetails(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;)I
    .locals 4
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4585
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4586
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 4588
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4590
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4593
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 4595
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetRunDetails(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;)I

    move-result v1

    .line 4598
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 4601
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 4604
    :cond_2
    return v1
.end method

.method public asyncAuthGetRunJsonDetails(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;)I
    .locals 4
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4460
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4461
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 4463
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4465
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4468
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 4470
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetRunJsonDetails(JILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;)I

    move-result v1

    .line 4473
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 4476
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 4479
    :cond_2
    return v1
.end method

.method public asyncAuthGetRuns(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5220
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5221
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 5223
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 5225
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5228
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 5230
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetRuns(JLcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;)I

    move-result v1

    .line 5233
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 5236
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 5239
    :cond_2
    return v1
.end method

.method public asyncAuthGetRunsInterval(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;)I
    .locals 11
    .param p1, "startDate"    # Ljava/lang/String;
    .param p2, "endDate"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "paginateBy"    # I
    .param p5, "productsFilter"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4875
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4876
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v10, 0x0

    .line 4878
    .local v10, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4880
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4883
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 4885
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthGetRunsInterval(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;)I

    move-result v10

    .line 4888
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 4891
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 4894
    :cond_2
    return v10
.end method

.method public asyncAuthInviteFriends(Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2726
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2727
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2728
    .local v2, "requestID":I
    const-string v1, ""

    .line 2730
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2732
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2735
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 2738
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2739
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthInviteFriends(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;)I

    move-result v2

    .line 2744
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 2747
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 2750
    :cond_2
    return v2
.end method

.method public asyncAuthNewHotspot(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3969
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3970
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 3971
    .local v2, "requestID":I
    const-string v1, ""

    .line 3973
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3975
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3978
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 3981
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3982
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3984
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthNewHotspot(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;)I

    move-result v2

    .line 3987
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 3990
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 3993
    :cond_2
    return v2
.end method

.method public asyncAuthPostLang(Lcom/parrot/arsdk/aracademy/ARAcademyLang;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2597
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2598
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2599
    .local v2, "requestID":I
    const-string v1, ""

    .line 2601
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2603
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2606
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 2609
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyLang;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyLang;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2610
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthPostLang(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;)I

    move-result v2

    .line 2615
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 2618
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 2621
    :cond_2
    return v2
.end method

.method public asyncAuthPostRunPhoto(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;)I
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p3, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p4, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 6136
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6137
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 6138
    .local v7, "requestID":I
    const-string v5, ""

    .line 6140
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6142
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6145
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 6148
    invoke-static {p2, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6149
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6151
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthPostRunPhoto(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;)I

    move-result v7

    .line 6154
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 6157
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 6160
    :cond_2
    return v7
.end method

.method public asyncAuthPostRunToEmail(ILcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;)I
    .locals 8
    .param p1, "runId"    # I
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5819
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5820
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 5821
    .local v7, "requestID":I
    const-string v5, ""

    .line 5823
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5825
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5828
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 5831
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5832
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5834
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthPostRunToEmail(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;)I

    move-result v7

    .line 5837
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 5840
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 5843
    :cond_2
    return v7
.end method

.method public asyncAuthPostRunVideo(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;)I
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p3, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p4, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 6229
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6230
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 6231
    .local v7, "requestID":I
    const-string v5, ""

    .line 6233
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6235
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6238
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 6241
    invoke-static {p2, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6242
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6244
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthPostRunVideo(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;)I

    move-result v7

    .line 6247
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 6250
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 6253
    :cond_2
    return v7
.end method

.method public asyncAuthPostRunsGradeVisible(ILcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;)I
    .locals 8
    .param p1, "runId"    # I
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 6003
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6004
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 6005
    .local v7, "requestID":I
    const-string v5, ""

    .line 6007
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6009
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6012
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 6015
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6016
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6018
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthPostRunsGradeVisible(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;)I

    move-result v7

    .line 6021
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 6024
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 6027
    :cond_2
    return v7
.end method

.method public asyncAuthRegisteredSkyController(Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2818
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2819
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2820
    .local v2, "requestID":I
    const-string v1, ""

    .line 2822
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2824
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2827
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 2830
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2831
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthRegisteredSkyController(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;)I

    move-result v2

    .line 2836
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 2839
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 2842
    :cond_2
    return v2
.end method

.method public asyncAuthRenameDrone(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyDrone;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;)I
    .locals 8
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2285
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2286
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 2287
    .local v7, "requestID":I
    const-string v5, ""

    .line 2289
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2291
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2294
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 2297
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2298
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthRenameDrone(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;)I

    move-result v7

    .line 2303
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 2306
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 2309
    :cond_2
    return v7
.end method

.method public asyncAuthSetPrivacy(Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 839
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 840
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 841
    .local v2, "requestID":I
    const-string v1, ""

    .line 843
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 845
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 848
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 851
    invoke-static {p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthSetPrivacy(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;)I

    move-result v2

    .line 857
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 860
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 863
    :cond_2
    return v2
.end method

.method public asyncAuthSetProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1083
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1084
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1085
    .local v2, "requestID":I
    const-string v1, ""

    .line 1087
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1089
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1092
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 1095
    invoke-static {p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthSetProfile(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;)I

    move-result v2

    .line 1101
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 1104
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 1107
    :cond_2
    return v2
.end method

.method public asyncAuthSetRun(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5729
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5730
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 5731
    .local v2, "requestID":I
    const-string v1, ""

    .line 5733
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 5735
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5738
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 5741
    invoke-static {p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5742
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5744
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthSetRun(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;)I

    move-result v2

    .line 5747
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 5750
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 5753
    :cond_2
    return v2
.end method

.method public asyncAuthUpdateAvatar(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;)I
    .locals 6
    .param p1, "avatar"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1667
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1668
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1669
    .local v2, "requestID":I
    const-string v1, ""

    .line 1671
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1673
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1676
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 1678
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthUpdateAvatar(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;)I

    move-result v2

    .line 1681
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 1684
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 1687
    :cond_2
    return v2
.end method

.method public asyncAuthUpdateEmail(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2947
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2948
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2949
    .local v2, "requestID":I
    const-string v1, ""

    .line 2951
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2953
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2956
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 2959
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2960
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthUpdateEmail(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;)I

    move-result v2

    .line 2965
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 2968
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 2971
    :cond_2
    return v2
.end method

.method public asyncAuthUpdateHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;)I
    .locals 8
    .param p1, "hotspotId"    # I
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .param p3, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .param p4, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3879
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3880
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 3881
    .local v7, "requestID":I
    const-string v5, ""

    .line 3883
    .local v5, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3885
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3888
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 3891
    invoke-static {p2, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3892
    const-string v1, "ARAcademyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncAuthUpdateHotspot(JILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;)I

    move-result v7

    .line 3897
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 3900
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 3903
    :cond_2
    return v7
.end method

.method public asyncConnect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;)I
    .locals 8
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 294
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v7, 0x0

    .line 296
    .local v7, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 298
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncConnect(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;)I

    move-result v7

    .line 305
    :goto_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_1

    .line 308
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 302
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 311
    :cond_1
    return v7
.end method

.method public asyncGetAllCountry(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 559
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 560
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 562
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 564
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 567
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 569
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetAllCountry(JLcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;)I

    move-result v1

    .line 572
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 575
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 578
    :cond_2
    return v1
.end method

.method public asyncGetAllHotspots(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3237
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3238
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 3240
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3242
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3245
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 3247
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetAllHotspots(JLcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;)I

    move-result v1

    .line 3250
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 3253
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 3256
    :cond_2
    return v1
.end method

.method public asyncGetHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;)I
    .locals 4
    .param p1, "hotspotId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3402
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3403
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 3405
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3407
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3410
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 3412
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetHotspot(JILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;)I

    move-result v1

    .line 3415
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 3418
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 3421
    :cond_2
    return v1
.end method

.method public asyncGetHotspotClusterDetail(Ljava/lang/String;IIILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;)I
    .locals 10
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "zoomRank"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3707
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3708
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v9, 0x0

    .line 3710
    .local v9, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3712
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3715
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 3717
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetHotspotClusterDetail(JLjava/lang/String;IIILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;)I

    move-result v9

    .line 3720
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 3723
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 3726
    :cond_2
    return v9
.end method

.method public asyncGetHotspotClusters(DDDDILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;)I
    .locals 15
    .param p1, "northEastLatitude"    # D
    .param p3, "southWestLongitude"    # D
    .param p5, "southWestLatitude"    # D
    .param p7, "northEastLongitude"    # D
    .param p9, "zoomRank"    # I
    .param p10, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3084
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3085
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v14, 0x0

    .line 3087
    .local v14, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3089
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3092
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 3094
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetHotspotClusters(JDDDDILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;)I

    move-result v14

    .line 3097
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 3100
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 3103
    :cond_2
    return v14
.end method

.method public asyncGetRunDetails(ILcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;)I
    .locals 4
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4329
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4330
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 4332
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4334
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4337
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 4339
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetRunDetails(JILcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;)I

    move-result v1

    .line 4342
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 4345
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 4348
    :cond_2
    return v1
.end method

.method public asyncGetRuns(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;)I
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5385
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5386
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 5388
    .local v1, "requestID":I
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 5390
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5393
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 5395
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetRuns(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;)I

    move-result v1

    .line 5398
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 5401
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 5404
    :cond_2
    return v1
.end method

.method public asyncGetRunsCluster(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;)I
    .locals 12
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "zoomRank"    # I
    .param p3, "page"    # I
    .param p4, "paginateBy"    # I
    .param p5, "filter"    # Ljava/lang/String;
    .param p6, "productsFilter"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5556
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5557
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v11, 0x0

    .line 5559
    .local v11, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5561
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5564
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 5566
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetRunsCluster(JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;)I

    move-result v11

    .line 5569
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 5572
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 5575
    :cond_2
    return v11
.end method

.method public asyncGetRunsClusters(DDDDILcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;)I
    .locals 15
    .param p1, "northWestLatitude"    # D
    .param p3, "northWestLongitude"    # D
    .param p5, "southEastLatitude"    # D
    .param p7, "southEastLongitude"    # D
    .param p9, "zoomRank"    # I
    .param p10, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4171
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4172
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v14, 0x0

    .line 4174
    .local v14, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4176
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4179
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 4181
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetRunsClusters(JDDDDILcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;)I

    move-result v14

    .line 4184
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 4187
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 4190
    :cond_2
    return v14
.end method

.method public asyncGetRunsInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;)I
    .locals 12
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "startDate"    # Ljava/lang/String;
    .param p3, "endDate"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "paginateBy"    # I
    .param p6, "productsFilter"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5050
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5051
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v11, 0x0

    .line 5053
    .local v11, "requestID":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5055
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5058
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 5060
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncGetRunsInterval(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;)I

    move-result v11

    .line 5063
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_2

    .line 5066
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v1

    .line 5069
    :cond_2
    return v11
.end method

.method public asyncPostResetPassword(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;)I
    .locals 6
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2468
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2469
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2470
    .local v2, "requestID":I
    const-string v1, ""

    .line 2472
    .local v1, "request":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2474
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2477
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v3, :cond_1

    .line 2480
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2481
    const-string v3, "ARAcademyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v4, v5, v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeAsyncPostResetPassword(JLjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;)I

    move-result v2

    .line 2486
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v3, :cond_2

    .line 2489
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 2492
    :cond_2
    return v2
.end method

.method public cancelAllRequests()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4

    .prologue
    .line 269
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 271
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 273
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeCancelAllRequests(J)I

    move-result v1

    .line 274
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 281
    .end local v1    # "intError":I
    :goto_0
    return-object v0

    .line 278
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0
.end method

.method public cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4
    .param p1, "requestID"    # I

    .prologue
    .line 244
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 246
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 248
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeCancelRequest(JI)I

    move-result v1

    .line 249
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 256
    .end local v1    # "intError":I
    :goto_0
    return-object v0

    .line 253
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 362
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeDisconnect(J)I

    .line 364
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeDelete(J)V

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    .line 214
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "intIsConnected":I
    const/4 v1, 0x0

    .line 374
    .local v1, "isConnected":Z
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 376
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeIsConnected(J)I

    move-result v0

    .line 384
    if-eqz v0, :cond_0

    .line 386
    const/4 v1, 0x1

    .line 389
    :cond_0
    return v1

    .line 381
    :cond_1
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-direct {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2
.end method

.method public isCorrectlyInitialized()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    return v0
.end method

.method public onAnonymousCreationProfileResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1951
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAnonymousCreationProfile "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 1953
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1954
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1955
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 1960
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1969
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 1974
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    move-object v5, v6

    .line 1991
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    :goto_1
    if-eqz p1, :cond_4

    .line 1993
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;->onAnonymousCreationProfileResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)V

    .line 2000
    :goto_2
    return-void

    .line 1962
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1965
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1980
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1982
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1983
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1984
    goto :goto_1

    .line 1988
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1997
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthAddDroneResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2224
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthAddDrone "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 2226
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2227
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2228
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 2233
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 2242
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 2247
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    move-object v5, v6

    .line 2264
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    :goto_1
    if-eqz p1, :cond_4

    .line 2266
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthAddDroneListener;->onAuthAddDroneResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)V

    .line 2273
    :goto_2
    return-void

    .line 2235
    :catch_0
    move-exception v0

    .line 2237
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2238
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2253
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 2255
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2256
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2257
    goto :goto_1

    .line 2261
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2270
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthDeleteDroneResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2441
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthDeleteDrone "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 2443
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 2444
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2446
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteDroneListener;->onAuthDeleteDroneResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 2453
    :goto_0
    return-void

    .line 2450
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthDeleteHotspotResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4124
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthDeleteHotspot "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 4126
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 4127
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 4129
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteHotspotListener;->onAuthDeleteHotspotResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 4136
    :goto_0
    return-void

    .line 4133
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthDeleteProfileResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1237
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthDeleteProfile "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 1239
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1240
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1242
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteProfileListener;->onAuthDeleteProfileResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 1249
    :goto_0
    return-void

    .line 1246
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthDeleteRunResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5975
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthDeleteRun "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5976
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 5977
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 5978
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5980
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;->onAuthDeleteRunResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 5987
    :goto_0
    return-void

    .line 5984
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthGetAvatarResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1607
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetAvatar "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 1609
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1610
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1611
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 1616
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1625
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 1630
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    move-object v5, v6

    .line 1647
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    :goto_1
    if-eqz p1, :cond_4

    .line 1649
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;->onAuthGetAvatarResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;)V

    .line 1656
    :goto_2
    return-void

    .line 1618
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1621
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1636
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1638
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1639
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1640
    goto :goto_1

    .line 1644
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1653
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetCountryResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 500
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetCountry "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 502
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 503
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 504
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 509
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 518
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 523
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 527
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    move-object v5, v6

    .line 540
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :goto_1
    if-eqz p1, :cond_4

    .line 542
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;->onAuthGetCountryResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)V

    .line 549
    :goto_2
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 514
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 531
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 532
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 533
    goto :goto_1

    .line 537
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetHotspotResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3634
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetHotspot "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 3636
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 3637
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3638
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 3643
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 3652
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 3657
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3661
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v5, v6

    .line 3684
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_1
    if-eqz p1, :cond_4

    .line 3686
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;->onAuthGetHotspotResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)V

    .line 3693
    :goto_2
    return-void

    .line 3645
    :catch_0
    move-exception v0

    .line 3647
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3648
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 3663
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 3665
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3666
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3677
    goto :goto_1

    .line 3668
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 3670
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 3671
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3677
    goto :goto_1

    .line 3673
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v0

    .line 3675
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3676
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3677
    goto :goto_1

    .line 3681
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3690
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetListDronesResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2092
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncAuthGetListDrones "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 2094
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 2095
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2096
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    const/4 v8, 0x0

    .line 2097
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 2102
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 2111
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 2116
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2118
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2120
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 2123
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2124
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2125
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2120
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    goto :goto_1

    .line 2104
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :catch_0
    move-exception v1

    .line 2106
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2107
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    move-object v10, v11

    .line 2139
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 2141
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;->onAuthGetListDronesResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 2148
    :goto_3
    return-void

    .line 2128
    :catch_1
    move-exception v1

    .line 2130
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2131
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2132
    goto :goto_2

    .line 2136
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2145
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2128
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :catch_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    goto :goto_4
.end method

.method public onAuthGetPilotByUsernameResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1474
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetPilotByUsername "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 1476
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1477
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1478
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 1483
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1492
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 1497
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1501
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    move-object v5, v6

    .line 1514
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    :goto_1
    if-eqz p1, :cond_4

    .line 1516
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;->onAuthGetPilotByUsernameResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    .line 1523
    :goto_2
    return-void

    .line 1485
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1488
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1503
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1505
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1506
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1507
    goto :goto_1

    .line 1511
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1520
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetPilotResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1343
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetPilot "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 1345
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1346
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1347
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 1352
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1361
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 1366
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    move-object v5, v6

    .line 1383
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    :goto_1
    if-eqz p1, :cond_4

    .line 1385
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;->onAuthGetPilotResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    .line 1392
    :goto_2
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1357
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1372
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1374
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1375
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1376
    goto :goto_1

    .line 1380
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1389
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetPilotStatisticsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1822
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetPilotStatistics "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 1824
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1825
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1826
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 1831
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1840
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 1845
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    move-object v5, v6

    .line 1862
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    :goto_1
    if-eqz p1, :cond_4

    .line 1864
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;->onAuthGetPilotStatisticsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;)V

    .line 1871
    :goto_2
    return-void

    .line 1833
    :catch_0
    move-exception v0

    .line 1835
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1836
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1851
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1853
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1854
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1855
    goto :goto_1

    .line 1859
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1868
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetPrivacyResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 777
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetPrivacy "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 779
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 780
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 781
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 786
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 795
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 800
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 804
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    move-object v5, v6

    .line 817
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    :goto_1
    if-eqz p1, :cond_4

    .line 819
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;->onAuthGetPrivacyResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;)V

    .line 826
    :goto_2
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 791
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 806
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 808
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 809
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 810
    goto :goto_1

    .line 814
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 823
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetProfileResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1011
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetProfile "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 1013
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1014
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1015
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 1020
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1029
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 1034
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    move-object v5, v6

    .line 1061
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    :goto_1
    if-eqz p1, :cond_4

    .line 1063
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;->onAuthGetProfileResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 1070
    :goto_2
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1025
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1040
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1042
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1043
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1054
    goto :goto_1

    .line 1045
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1048
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1054
    goto :goto_1

    .line 1050
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1053
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1054
    goto :goto_1

    .line 1058
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1067
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetRunDetailsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4656
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetRunDetails "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4657
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 4658
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 4659
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4660
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 4665
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 4674
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 4679
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4683
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    move-object v5, v6

    .line 4696
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :goto_1
    if-eqz p1, :cond_4

    .line 4698
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;->onAuthGetRunDetailsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 4705
    :goto_2
    return-void

    .line 4667
    :catch_0
    move-exception v0

    .line 4669
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4670
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 4685
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 4687
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4688
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4689
    goto :goto_1

    .line 4693
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4702
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetRunJsonDetailsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;I[B)V
    .locals 9
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4528
    const-string v6, "ARAcademyManager"

    const-string v7, " asyncAuthGetRunJsonDetails "

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 4530
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 4531
    .local v2, "json":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4532
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_1

    array-length v6, p3

    if-lez v6, :cond_1

    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v6, :cond_0

    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v6, :cond_1

    .line 4537
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 4546
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v6, :cond_3

    .line 4551
    :cond_2
    :try_start_1
    const-string v6, "ARAcademyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "json: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .local v5, "jsonObject":Lorg/json/JSONObject;
    move-object v4, v5

    .line 4565
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz p1, :cond_4

    .line 4567
    invoke-interface {p1, v1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;->onAuthGetRunJsonDetailsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lorg/json/JSONObject;)V

    .line 4574
    :goto_2
    return-void

    .line 4539
    :catch_0
    move-exception v0

    .line 4541
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4542
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 4554
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 4556
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4557
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4558
    goto :goto_1

    .line 4562
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v6, "ARAcademyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4571
    :cond_4
    const-string v6, "ARAcademyManager"

    const-string v7, "null listener"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetRunResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4801
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthGetRun "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 4803
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 4804
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4805
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 4810
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 4819
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 4824
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4825
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4828
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v5, v6

    .line 4851
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_1
    if-eqz p1, :cond_4

    .line 4853
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;->onAuthGetRunResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V

    .line 4860
    :goto_2
    return-void

    .line 4812
    :catch_0
    move-exception v0

    .line 4814
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4815
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 4830
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 4832
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4833
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4844
    goto :goto_1

    .line 4835
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 4837
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 4838
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4844
    goto :goto_1

    .line 4840
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v0

    .line 4842
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 4843
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4844
    goto :goto_1

    .line 4848
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4857
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthGetRunsIntervalResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4968
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncAuthGetRunsInterval "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4969
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 4970
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 4971
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 4972
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v8, 0x0

    .line 4973
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 4978
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 4987
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 4992
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4994
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4996
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 4999
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 5000
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 5001
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4996
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_1

    .line 4980
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_0
    move-exception v1

    .line 4982
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4983
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .line 5025
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 5027
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;->onAuthGetRunsIntervalResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 5034
    :goto_3
    return-void

    .line 5004
    :catch_1
    move-exception v1

    .line 5006
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5007
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5018
    goto :goto_2

    .line 5009
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 5011
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5012
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5018
    goto :goto_2

    .line 5014
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 5016
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5017
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5018
    goto :goto_2

    .line 5022
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5031
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5014
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .line 5009
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .line 5004
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4
.end method

.method public onAuthGetRunsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5308
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncAuthGetRuns "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5309
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 5310
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 5311
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5312
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v8, 0x0

    .line 5313
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 5318
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 5327
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 5332
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5334
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5336
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 5339
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 5340
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 5341
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5336
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_1

    .line 5320
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_0
    move-exception v1

    .line 5322
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5323
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .line 5365
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 5367
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;->onAuthGetRunsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 5374
    :goto_3
    return-void

    .line 5344
    :catch_1
    move-exception v1

    .line 5346
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5347
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5358
    goto :goto_2

    .line 5349
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 5351
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5352
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5358
    goto :goto_2

    .line 5354
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 5356
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5357
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5358
    goto :goto_2

    .line 5362
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5371
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5354
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .line 5349
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .line 5344
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4
.end method

.method public onAuthInviteFriendsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2791
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthInviteFriends "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 2793
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 2794
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2796
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthInviteFriendsListener;->onAuthInviteFriendsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 2803
    :goto_0
    return-void

    .line 2800
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthNewHotspotResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4034
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthNewHotspot "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 4036
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 4037
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 4039
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthNewHotspotListener;->onAuthNewHotspotResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 4046
    :goto_0
    return-void

    .line 4043
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthPostLangResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2662
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthPostLang "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 2664
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2665
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2666
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 2671
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 2680
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 2685
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2689
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyLang;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyLang;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    move-object v5, v6

    .line 2702
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    :goto_1
    if-eqz p1, :cond_4

    .line 2704
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostLangListener;->onAuthPostLangResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyLang;)V

    .line 2711
    :goto_2
    return-void

    .line 2673
    :catch_0
    move-exception v0

    .line 2675
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2676
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2691
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 2693
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2694
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2695
    goto :goto_1

    .line 2699
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2708
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthPostRunPhotoResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 6203
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthPostRunPhoto "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6204
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 6205
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 6206
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 6208
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunPhotoListener;->onAuthPostRunPhotoResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 6215
    :goto_0
    return-void

    .line 6212
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthPostRunToEmailResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5885
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthPostRunToEmail "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5886
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 5887
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 5888
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5890
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunToEmailListener;->onAuthPostRunToEmailResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 5897
    :goto_0
    return-void

    .line 5894
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthPostRunVideoResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 6296
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthPostRunVideo "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6297
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 6298
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 6299
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 6301
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunVideoListener;->onAuthPostRunVideoResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 6308
    :goto_0
    return-void

    .line 6305
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthPostRunsGradeVisibleResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 6069
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthPostRunsGradeVisible "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6070
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 6071
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 6072
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6073
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 6078
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 6087
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 6092
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6093
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6096
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    move-object v5, v6

    .line 6109
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    :goto_1
    if-eqz p1, :cond_4

    .line 6111
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;->onAuthPostRunsGradeVisibleResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;)V

    .line 6118
    :goto_2
    return-void

    .line 6080
    :catch_0
    move-exception v0

    .line 6082
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6083
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 6098
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 6100
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6101
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6102
    goto :goto_1

    .line 6106
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6115
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthRegisteredSkyControllerResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2883
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthRegisteredSkyController "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 2885
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2886
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2887
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 2892
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 2901
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 2906
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2910
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    move-object v5, v6

    .line 2923
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    :goto_1
    if-eqz p1, :cond_4

    .line 2925
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;->onAuthRegisteredSkyControllerResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;)V

    .line 2932
    :goto_2
    return-void

    .line 2894
    :catch_0
    move-exception v0

    .line 2896
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2897
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2912
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 2914
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2915
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2916
    goto :goto_1

    .line 2920
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2929
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthRenameDroneResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2351
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthRenameDrone "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 2353
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 2354
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2356
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthRenameDroneListener;->onAuthRenameDroneResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 2363
    :goto_0
    return-void

    .line 2360
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthSetPrivacyResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 905
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthSetPrivacy "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 907
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 908
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 910
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetPrivacyListener;->onAuthSetPrivacyResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 917
    :goto_0
    return-void

    .line 914
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthSetProfileResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1149
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthSetProfile "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 1151
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1152
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1154
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetProfileListener;->onAuthSetProfileResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 1161
    :goto_0
    return-void

    .line 1158
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthSetRunResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5795
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthSetRun "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5796
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 5797
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 5798
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5800
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthSetRunListener;->onAuthSetRunResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 5807
    :goto_0
    return-void

    .line 5804
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthUpdateAvatarResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 1724
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthUpdateAvatar "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 1726
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 1727
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1729
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateAvatarListener;->onAuthUpdateAvatarResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 1736
    :goto_0
    return-void

    .line 1733
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAuthUpdateEmailResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3012
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncAuthUpdateEmail "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 3014
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 3015
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3016
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 3021
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 3030
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 3035
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3036
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3039
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    move-object v5, v6

    .line 3052
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    :goto_1
    if-eqz p1, :cond_4

    .line 3054
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateEmailListener;->onAuthUpdateEmailResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyEmail;)V

    .line 3061
    :goto_2
    return-void

    .line 3023
    :catch_0
    move-exception v0

    .line 3025
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3026
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 3041
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 3043
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3044
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3045
    goto :goto_1

    .line 3049
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3058
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAuthUpdateHotspotResponse(Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;I[B)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3946
    const-string v2, "ARAcademyManager"

    const-string v3, " asyncAuthUpdateHotspot "

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 3948
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 3949
    .local v1, "json":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3951
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAuthUpdateHotspotListener;->onAuthUpdateHotspotResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 3958
    :goto_0
    return-void

    .line 3955
    :cond_0
    const-string v2, "ARAcademyManager"

    const-string v3, "null listener"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    const-string v0, "ARAcademyManager"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConnectionResponse(Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;
    .param p2, "intError"    # I

    .prologue
    .line 342
    const-string v1, "ARAcademyManager"

    const-string v2, " asyncConnect "

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 344
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    if-eqz p1, :cond_0

    .line 346
    invoke-interface {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;->onConnectionResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v1, "ARAcademyManager"

    const-string v2, "null listener"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 187
    const-string v1, "ARAcademyManager"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 190
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeNew()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    .line 195
    :cond_0
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    .line 200
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->dispose()V

    .line 223
    return-void
.end method

.method public onGetAllCountryResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 637
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetAllCountry "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 639
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 640
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 641
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    const/4 v8, 0x0

    .line 642
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 647
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 656
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 661
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 665
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 668
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 669
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 670
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 665
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    goto :goto_1

    .line 649
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 652
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    move-object v10, v11

    .line 684
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 686
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;->onGetAllCountryResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 693
    :goto_3
    return-void

    .line 673
    :catch_1
    move-exception v1

    .line 675
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 676
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 677
    goto :goto_2

    .line 681
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 690
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 673
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :catch_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    goto :goto_4
.end method

.method public onGetAllHotspotsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3325
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetAllHotspots "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 3327
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 3328
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3329
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    const/4 v8, 0x0

    .line 3330
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 3335
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 3344
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 3349
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3351
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3353
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 3356
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3357
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 3358
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3353
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    goto :goto_1

    .line 3337
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_0
    move-exception v1

    .line 3339
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3340
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .line 3382
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 3384
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;->onGetAllHotspotsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 3391
    :goto_3
    return-void

    .line 3361
    :catch_1
    move-exception v1

    .line 3363
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3364
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3375
    goto :goto_2

    .line 3366
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 3368
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 3369
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3375
    goto :goto_2

    .line 3371
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 3373
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3374
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3375
    goto :goto_2

    .line 3379
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3388
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3371
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_6

    .line 3366
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_5

    .line 3361
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4
.end method

.method public onGetHotspotClusterDetailResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3799
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetHotspotClusterDetail "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 3801
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 3802
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3803
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    const/4 v8, 0x0

    .line 3804
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 3809
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 3818
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 3823
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3825
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3827
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 3830
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3831
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 3832
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3827
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    goto :goto_1

    .line 3811
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_0
    move-exception v1

    .line 3813
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3814
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .line 3856
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 3858
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;->onGetHotspotClusterDetailResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 3865
    :goto_3
    return-void

    .line 3835
    :catch_1
    move-exception v1

    .line 3837
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3838
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3849
    goto :goto_2

    .line 3840
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 3842
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 3843
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3849
    goto :goto_2

    .line 3845
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 3847
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3848
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3849
    goto :goto_2

    .line 3853
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3862
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3845
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_6

    .line 3840
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_5

    .line 3835
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4
.end method

.method public onGetHotspotClustersResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3167
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetHotspotClusters "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 3169
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 3170
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3171
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    const/4 v8, 0x0

    .line 3172
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 3177
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 3186
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 3191
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3193
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3195
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 3198
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3199
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3200
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3195
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    goto :goto_1

    .line 3179
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :catch_0
    move-exception v1

    .line 3181
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3182
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    move-object v10, v11

    .line 3214
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 3216
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;->onGetHotspotClustersResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 3223
    :goto_3
    return-void

    .line 3203
    :catch_1
    move-exception v1

    .line 3205
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3206
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3207
    goto :goto_2

    .line 3211
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3220
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3203
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :catch_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    goto :goto_4
.end method

.method public onGetHotspotResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 3483
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncGetHotspot "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 3485
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 3486
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3487
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 3492
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 3501
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 3506
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3510
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v5, v6

    .line 3533
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_1
    if-eqz p1, :cond_4

    .line 3535
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;->onGetHotspotResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)V

    .line 3542
    :goto_2
    return-void

    .line 3494
    :catch_0
    move-exception v0

    .line 3496
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3497
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 3512
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 3514
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3515
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3526
    goto :goto_1

    .line 3517
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 3519
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 3520
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3526
    goto :goto_1

    .line 3522
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v0

    .line 3524
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3525
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3526
    goto :goto_1

    .line 3530
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3539
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onGetRunDetailsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4400
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncGetRunDetails "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 4402
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 4403
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4404
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 4409
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 4418
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 4423
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4424
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4427
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    move-object v5, v6

    .line 4440
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :goto_1
    if-eqz p1, :cond_4

    .line 4442
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;->onGetRunDetailsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 4449
    :goto_2
    return-void

    .line 4411
    :catch_0
    move-exception v0

    .line 4413
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4414
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 4429
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 4431
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4432
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4433
    goto :goto_1

    .line 4437
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4446
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onGetRunsClusterResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5650
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetRunsCluster "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5651
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 5652
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 5653
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5654
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v8, 0x0

    .line 5655
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 5660
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 5669
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 5674
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5676
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5678
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 5681
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 5682
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 5683
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5678
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_1

    .line 5662
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_0
    move-exception v1

    .line 5664
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5665
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .line 5707
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 5709
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;->onGetRunsClusterResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 5716
    :goto_3
    return-void

    .line 5686
    :catch_1
    move-exception v1

    .line 5688
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5689
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5700
    goto :goto_2

    .line 5691
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 5693
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5694
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5700
    goto :goto_2

    .line 5696
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 5698
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5699
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5700
    goto :goto_2

    .line 5704
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5713
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5696
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .line 5691
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .line 5686
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4
.end method

.method public onGetRunsClustersResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 4254
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetRunsClusters "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 4256
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 4257
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 4258
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    const/4 v8, 0x0

    .line 4259
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 4264
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 4273
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 4278
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4280
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4282
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 4285
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 4286
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4287
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4282
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    goto :goto_1

    .line 4266
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :catch_0
    move-exception v1

    .line 4268
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4269
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    move-object v10, v11

    .line 4301
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 4303
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;->onGetRunsClustersResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 4310
    :goto_3
    return-void

    .line 4290
    :catch_1
    move-exception v1

    .line 4292
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4293
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4294
    goto :goto_2

    .line 4298
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4307
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4290
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :catch_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    goto :goto_4
.end method

.method public onGetRunsIntervalResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5144
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetRunsInterval "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5145
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 5146
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 5147
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5148
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v8, 0x0

    .line 5149
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 5154
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 5163
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 5168
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5170
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5172
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 5175
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 5176
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 5177
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5172
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_1

    .line 5156
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_0
    move-exception v1

    .line 5158
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5159
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .line 5201
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 5203
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;->onGetRunsIntervalResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 5210
    :goto_3
    return-void

    .line 5180
    :catch_1
    move-exception v1

    .line 5182
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5183
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5194
    goto :goto_2

    .line 5185
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 5187
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5188
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5194
    goto :goto_2

    .line 5190
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 5192
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5193
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5194
    goto :goto_2

    .line 5198
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5207
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5190
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .line 5185
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .line 5180
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4
.end method

.method public onGetRunsResponse(Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;I[B)V
    .locals 15
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 5474
    const-string v12, "ARAcademyManager"

    const-string v13, " asyncGetRuns "

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5475
    invoke-static/range {p2 .. p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 5476
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v4, 0x0

    .line 5477
    .local v4, "json":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5478
    .local v10, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v8, 0x0

    .line 5479
    .local v8, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_1

    .line 5484
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Ljava/lang/String;
    .local v5, "json":Ljava/lang/String;
    move-object v4, v5

    .line 5493
    .end local v5    # "json":Ljava/lang/String;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v12, :cond_4

    .line 5498
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5500
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v11, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5502
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v9, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 5505
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 5506
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v8, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 5507
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_4
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5502
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_1

    .line 5486
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_0
    move-exception v1

    .line 5488
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5489
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :cond_3
    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .line 5531
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_2
    if-eqz p1, :cond_5

    .line 5533
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;->onGetRunsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V

    .line 5540
    :goto_3
    return-void

    .line 5510
    :catch_1
    move-exception v1

    .line 5512
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5513
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5524
    goto :goto_2

    .line 5515
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 5517
    .local v1, "e":Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5518
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5524
    goto :goto_2

    .line 5520
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v1

    .line 5522
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5523
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5524
    goto :goto_2

    .line 5528
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v12, "ARAcademyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5537
    :cond_5
    const-string v12, "ARAcademyManager"

    const-string v13, "null listener"

    invoke-static {v12, v13}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5520
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_6

    .line 5515
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_5

    .line 5510
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v8    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v10, v11

    .end local v11    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v10    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4
.end method

.method public onPostResetPasswordResponse(Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;I[B)V
    .locals 10
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;
    .param p2, "intError"    # I
    .param p3, "dataRead"    # [B

    .prologue
    .line 2533
    const-string v7, "ARAcademyManager"

    const-string v8, " asyncPostResetPassword "

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v1

    .line 2535
    .local v1, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 2536
    .local v2, "json":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2537
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_1

    .line 2542
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 2551
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v1, v7, :cond_3

    .line 2556
    :cond_2
    :try_start_1
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2560
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;

    invoke-direct {v6, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    move-object v5, v6

    .line 2573
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    .restart local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    :goto_1
    if-eqz p1, :cond_4

    .line 2575
    invoke-interface {p1, v1, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyPostResetPasswordListener;->onPostResetPasswordResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V

    .line 2582
    :goto_2
    return-void

    .line 2544
    :catch_0
    move-exception v0

    .line 2546
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2547
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2562
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 2564
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2565
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2566
    goto :goto_1

    .line 2570
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v7, "ARAcademyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2579
    :cond_4
    const-string v7, "ARAcademyManager"

    const-string v8, "null listener"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public syncAnonymousCreationProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1921
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1922
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 1924
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1926
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1929
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1932
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1933
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAnonymousCreationProfile(JLjava/lang/String;)Ljava/lang/String;

    .line 1938
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1941
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1944
    :cond_2
    return-void
.end method

.method public syncAuthAddDrone(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2194
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2195
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2197
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2199
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2202
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2205
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2206
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthAddDrone(JLjava/lang/String;)Ljava/lang/String;

    .line 2211
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2214
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2217
    :cond_2
    return-void
.end method

.method public syncAuthDeleteDrone(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)V
    .locals 5
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2411
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2412
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2414
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2416
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2419
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2422
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2423
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthDeleteDrone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2428
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2431
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2434
    :cond_2
    return-void
.end method

.method public syncAuthDeleteHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyHotspot;)V
    .locals 5
    .param p1, "hotspotId"    # I
    .param p2, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4094
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4095
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 4097
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4099
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4102
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 4105
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4106
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthDeleteHotspot(JILjava/lang/String;)Ljava/lang/String;

    .line 4111
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 4114
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 4117
    :cond_2
    return-void
.end method

.method public syncAuthDeleteProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 5
    .param p1, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1207
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1208
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 1210
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1212
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1215
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1218
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthDeleteProfile(JLjava/lang/String;)Ljava/lang/String;

    .line 1224
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1227
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1230
    :cond_2
    return-void
.end method

.method public syncAuthDeleteRun(ILcom/parrot/arsdk/aracademy/ARAcademyRun;)V
    .locals 5
    .param p1, "runId"    # I
    .param p2, "modelToDelete"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5945
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5946
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 5948
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 5950
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5953
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 5956
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5957
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthDeleteRun(JILjava/lang/String;)Ljava/lang/String;

    .line 5962
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 5965
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 5968
    :cond_2
    return-void
.end method

.method public syncAuthGetAvatar(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;)Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    .locals 8
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetAvatarListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1566
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1567
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 1568
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1570
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1572
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1575
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 1577
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetAvatar(J)Ljava/lang/String;

    move-result-object v0

    .line 1583
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    move-object v4, v5

    .line 1593
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileAvatar;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 1596
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 1588
    :catch_0
    move-exception v1

    .line 1590
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1591
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 1599
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetCountry(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;)Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .locals 8
    .param p1, "countryID"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetCountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 459
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 460
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 461
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 463
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 465
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 468
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 470
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetCountry(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 479
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    move-object v4, v5

    .line 486
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 489
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 481
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 484
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 492
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;)Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .locals 8
    .param p1, "hotspotId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3583
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3584
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 3585
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3587
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 3589
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3592
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 3594
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetHotspot(JI)Ljava/lang/String;

    move-result-object v0

    .line 3600
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3603
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v4, v5

    .line 3620
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 3623
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 3605
    :catch_0
    move-exception v1

    .line 3607
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3608
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3619
    goto :goto_0

    .line 3610
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 3612
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 3613
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3619
    goto :goto_0

    .line 3615
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 3617
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3618
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 3626
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetListDrones(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetListDronesListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyDrone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2043
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2044
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 2045
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2046
    .local v8, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    const/4 v6, 0x0

    .line 2048
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    iget-boolean v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 2050
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2053
    :cond_0
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v10, :cond_1

    .line 2055
    iget-wide v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v10, v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetListDrones(J)Ljava/lang/String;

    move-result-object v0

    .line 2061
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .local v9, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2065
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .local v7, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 2068
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2069
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    invoke-direct {v6, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2070
    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    :try_start_3
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2065
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    goto :goto_0

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    move-object v8, v9

    .line 2078
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :goto_1
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v10, :cond_3

    .line 2081
    new-instance v10, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v10, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v10

    .line 2073
    :catch_0
    move-exception v1

    .line 2075
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2076
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 2084
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v8

    .line 2073
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :catch_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    goto :goto_2

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyDrone;>;"
    goto :goto_2
.end method

.method public syncAuthGetPilot(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .locals 8
    .param p1, "pilotID"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1302
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1303
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 1304
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1306
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1308
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1311
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 1313
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetPilot(JI)Ljava/lang/String;

    move-result-object v0

    .line 1319
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    move-object v4, v5

    .line 1329
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 1332
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 1324
    :catch_0
    move-exception v1

    .line 1326
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1327
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 1335
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetPilotByUsername(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .locals 8
    .param p1, "pilotUsername"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotByUsernameListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1433
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1434
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 1435
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1437
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1439
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1442
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 1444
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetPilotByUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1450
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    move-object v4, v5

    .line 1460
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 1463
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 1455
    :catch_0
    move-exception v1

    .line 1457
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1458
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 1466
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetPilotStatistics(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;)Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    .locals 8
    .param p1, "pilotUsername"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPilotStatisticsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1781
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1782
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 1783
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1785
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1787
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1790
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 1792
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetPilotStatistics(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1801
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    move-object v4, v5

    .line 1808
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfileStatistics;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 1811
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 1803
    :catch_0
    move-exception v1

    .line 1805
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1806
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 1814
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetPrivacy(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;)Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .locals 8
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetPrivacyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 736
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 737
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 738
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 740
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 742
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 745
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 747
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetPrivacy(J)Ljava/lang/String;

    move-result-object v0

    .line 753
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 756
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    move-object v4, v5

    .line 763
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 766
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 758
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 761
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 769
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;)Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .locals 8
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 960
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 961
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 962
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 964
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 966
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 969
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 971
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetProfile(J)Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 980
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    move-object v4, v5

    .line 997
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 1000
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 982
    :catch_0
    move-exception v1

    .line 984
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 985
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 996
    goto :goto_0

    .line 987
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 989
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 990
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 996
    goto :goto_0

    .line 992
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 994
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 995
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 1003
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetRun(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;)Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .locals 8
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4750
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4751
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 4752
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4754
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 4756
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4759
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 4761
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetRun(JI)Ljava/lang/String;

    move-result-object v0

    .line 4767
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4770
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v4, v5

    .line 4787
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 4790
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 4772
    :catch_0
    move-exception v1

    .line 4774
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4775
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4786
    goto :goto_0

    .line 4777
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 4779
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 4780
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4786
    goto :goto_0

    .line 4782
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 4784
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 4785
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 4793
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetRunDetails(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 8
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunDetailsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4615
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4616
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 4617
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4619
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 4621
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4624
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 4626
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetRunDetails(JI)Ljava/lang/String;

    move-result-object v0

    .line 4632
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4635
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    move-object v4, v5

    .line 4642
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 4645
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 4637
    :catch_0
    move-exception v1

    .line 4639
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4640
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 4648
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncAuthGetRunJsonDetails(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4490
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4491
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 4492
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4494
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-boolean v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 4496
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4499
    :cond_0
    sget-object v5, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v5, :cond_1

    .line 4501
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetRunJsonDetails(JI)Ljava/lang/String;

    move-result-object v0

    .line 4507
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v3, v4

    .line 4514
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    sget-object v5, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v5, :cond_2

    .line 4517
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v5, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v5

    .line 4509
    :catch_0
    move-exception v1

    .line 4511
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4512
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 4520
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v3
.end method

.method public syncAuthGetRuns(Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5249
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5250
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 5251
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5252
    .local v8, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v6, 0x0

    .line 5254
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    iget-boolean v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 5256
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5259
    :cond_0
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v10, :cond_1

    .line 5261
    iget-wide v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v10, v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetRuns(J)Ljava/lang/String;

    move-result-object v0

    .line 5267
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5269
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v9, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5271
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v7, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 5274
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 5275
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v6, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5276
    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_3
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5271
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_0

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .line 5294
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_1
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v10, :cond_3

    .line 5297
    new-instance v10, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v10, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v10

    .line 5279
    :catch_0
    move-exception v1

    .line 5281
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5282
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5293
    goto :goto_1

    .line 5284
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 5286
    .local v1, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5287
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5293
    goto :goto_1

    .line 5289
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 5291
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5292
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 5300
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v8

    .line 5289
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .line 5284
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .line 5279
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2
.end method

.method public syncAuthGetRunsInterval(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "startDate"    # Ljava/lang/String;
    .param p2, "endDate"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "paginateBy"    # I
    .param p5, "productsFilter"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsIntervalListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4909
    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4910
    .local v12, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 4911
    .local v2, "dataRead":Ljava/lang/String;
    const/16 v18, 0x0

    .line 4912
    .local v18, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/16 v16, 0x0

    .line 4914
    .local v16, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 4916
    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4919
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v12, v3, :cond_1

    .line 4921
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthGetRunsInterval(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4927
    :cond_1
    :try_start_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4929
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v19, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_1
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4931
    .local v14, "jsonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    move-object/from16 v17, v16

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v17, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_0
    :try_start_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 4934
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 4935
    .local v15, "jsonObject":Lorg/json/JSONObject;
    new-instance v16, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4936
    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4931
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v17, v16

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_0

    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v16, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v18, v19

    .line 4954
    .end local v13    # "i":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v12, v3, :cond_3

    .line 4957
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v12}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 4939
    :catch_0
    move-exception v11

    .line 4941
    .local v11, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 4942
    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4953
    goto :goto_1

    .line 4944
    .end local v11    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v11

    .line 4946
    .local v11, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v11}, Ljava/text/ParseException;->printStackTrace()V

    .line 4947
    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4953
    goto :goto_1

    .line 4949
    .end local v11    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v11

    .line 4951
    .local v11, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v11}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 4952
    sget-object v12, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 4960
    .end local v11    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v18

    .line 4949
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_3
    move-exception v11

    move-object/from16 v18, v19

    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v13    # "i":I
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v18, v19

    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .line 4944
    .end local v13    # "i":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v11

    move-object/from16 v18, v19

    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v13    # "i":I
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v18, v19

    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .line 4939
    .end local v13    # "i":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v11

    move-object/from16 v18, v19

    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v13    # "i":I
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v18, v19

    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2
.end method

.method public syncAuthInviteFriends(Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2761
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2762
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2764
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2766
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2769
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2772
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyInviteFriends;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2773
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthInviteFriends(JLjava/lang/String;)Ljava/lang/String;

    .line 2778
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2781
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2784
    :cond_2
    return-void
.end method

.method public syncAuthNewHotspot(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4004
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4005
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 4007
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4009
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4012
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 4015
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4016
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthNewHotspot(JLjava/lang/String;)Ljava/lang/String;

    .line 4021
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 4024
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 4027
    :cond_2
    return-void
.end method

.method public syncAuthPostLang(Lcom/parrot/arsdk/aracademy/ARAcademyLang;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyLang;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2632
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2633
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2635
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2637
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2640
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2643
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyLang;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyLang;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2644
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthPostLang(JLjava/lang/String;)Ljava/lang/String;

    .line 2649
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2652
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2655
    :cond_2
    return-void
.end method

.method public syncAuthPostRunPhoto(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p3, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 6173
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6174
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 6176
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6178
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6181
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 6184
    invoke-static {p2, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6185
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6187
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthPostRunPhoto(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6190
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 6193
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 6196
    :cond_2
    return-void
.end method

.method public syncAuthPostRunToEmail(ILcom/parrot/arsdk/aracademy/ARAcademyRun;)V
    .locals 5
    .param p1, "runId"    # I
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5855
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5856
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 5858
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 5860
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5863
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 5866
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5867
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5869
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthPostRunToEmail(JILjava/lang/String;)Ljava/lang/String;

    .line 5872
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 5875
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 5878
    :cond_2
    return-void
.end method

.method public syncAuthPostRunVideo(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p3, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 6266
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6267
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 6269
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6271
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6274
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 6277
    invoke-static {p2, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6278
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6280
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthPostRunVideo(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6283
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 6286
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 6289
    :cond_2
    return-void
.end method

.method public syncAuthPostRunsGradeVisible(ILcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;)V
    .locals 5
    .param p1, "runId"    # I
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 6039
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6040
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 6042
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6044
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 6047
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 6050
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6051
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthPostRunsGradeVisible(JILjava/lang/String;)Ljava/lang/String;

    .line 6056
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 6059
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 6062
    :cond_2
    return-void
.end method

.method public syncAuthRegisteredSkyController(Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2853
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2854
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2856
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2858
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2861
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2864
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2865
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthRegisteredSkyController(JLjava/lang/String;)Ljava/lang/String;

    .line 2870
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2873
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2876
    :cond_2
    return-void
.end method

.method public syncAuthRenameDrone(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)V
    .locals 5
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2321
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2322
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2324
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2326
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2329
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2332
    invoke-static {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2333
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthRenameDrone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2338
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2341
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2344
    :cond_2
    return-void
.end method

.method public syncAuthSetPrivacy(Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 876
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 878
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 880
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 883
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 886
    invoke-static {p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 887
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthSetPrivacy(JLjava/lang/String;)Ljava/lang/String;

    .line 892
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 895
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 898
    :cond_2
    return-void
.end method

.method public syncAuthSetProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1119
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1120
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 1122
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1124
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1127
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1130
    invoke-static {p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthSetProfile(JLjava/lang/String;)Ljava/lang/String;

    .line 1136
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1139
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1142
    :cond_2
    return-void
.end method

.method public syncAuthSetRun(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .param p2, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5765
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5766
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 5768
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 5770
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5773
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 5776
    invoke-static {p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5777
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5779
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthSetRun(JLjava/lang/String;)Ljava/lang/String;

    .line 5782
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 5785
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 5788
    :cond_2
    return-void
.end method

.method public syncAuthUpdateAvatar(Ljava/lang/String;)V
    .locals 4
    .param p1, "avatar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 1698
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1699
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 1701
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1703
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1706
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 1708
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthUpdateAvatar(JLjava/lang/String;)Ljava/lang/String;

    .line 1711
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 1714
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 1717
    :cond_2
    return-void
.end method

.method public syncAuthUpdateEmail(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2982
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2983
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2985
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2987
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2990
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2993
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2994
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthUpdateEmail(JLjava/lang/String;)Ljava/lang/String;

    .line 2999
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 3002
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 3005
    :cond_2
    return-void
.end method

.method public syncAuthUpdateHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)V
    .locals 5
    .param p1, "hotspotId"    # I
    .param p2, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .param p3, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3916
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3917
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 3919
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3921
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3924
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 3927
    invoke-static {p2, p3}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3928
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncAuthUpdateHotspot(JILjava/lang/String;)Ljava/lang/String;

    .line 3933
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 3936
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 3939
    :cond_2
    return-void
.end method

.method public syncConnect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyConnectionListener;

    .prologue
    .line 322
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 324
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 326
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncConnect(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 334
    .end local v1    # "intError":I
    :goto_0
    return-object v0

    .line 331
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0
.end method

.method public syncGetAllCountry(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetAllCountryListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyCountry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 588
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 589
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 590
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v8, 0x0

    .line 591
    .local v8, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    const/4 v6, 0x0

    .line 593
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    iget-boolean v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 595
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 598
    :cond_0
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v10, :cond_1

    .line 600
    iget-wide v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v10, v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetAllCountry(J)Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .local v9, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .local v7, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 613
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 614
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-direct {v6, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 615
    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :try_start_3
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 610
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    goto :goto_0

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    move-object v8, v9

    .line 623
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :goto_1
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v10, :cond_3

    .line 626
    new-instance v10, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v10, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v10

    .line 618
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 621
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 629
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v8

    .line 618
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :catch_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    goto :goto_2

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyCountry;>;"
    goto :goto_2
.end method

.method public syncGetAllHotspots(Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetAllHotspotsListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3266
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3267
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 3268
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3269
    .local v8, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    const/4 v6, 0x0

    .line 3271
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    iget-boolean v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 3273
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3276
    :cond_0
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v10, :cond_1

    .line 3278
    iget-wide v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v10, v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetAllHotspots(J)Ljava/lang/String;

    move-result-object v0

    .line 3284
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3286
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .local v9, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3288
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v7, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 3291
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 3292
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v6, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3293
    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :try_start_3
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3288
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    goto :goto_0

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v8, v9

    .line 3311
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :goto_1
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v10, :cond_3

    .line 3314
    new-instance v10, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v10, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v10

    .line 3296
    :catch_0
    move-exception v1

    .line 3298
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3299
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3310
    goto :goto_1

    .line 3301
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 3303
    .local v1, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 3304
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3310
    goto :goto_1

    .line 3306
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 3308
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3309
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 3317
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v8

    .line 3306
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4

    .line 3301
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_3

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_3

    .line 3296
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_2

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_2
.end method

.method public syncGetHotspot(ILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;)Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .locals 8
    .param p1, "hotspotId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3432
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3433
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 3434
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3436
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 3438
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3441
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 3443
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetHotspot(JI)Ljava/lang/String;

    move-result-object v0

    .line 3449
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3452
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object v4, v5

    .line 3469
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 3472
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 3454
    :catch_0
    move-exception v1

    .line 3456
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3457
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3468
    goto :goto_0

    .line 3459
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 3461
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 3462
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3468
    goto :goto_0

    .line 3464
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 3466
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3467
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 3475
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_2
    return-object v4
.end method

.method public syncGetHotspotClusterDetail(Ljava/lang/String;IIILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "zoomRank"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClusterDetailListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3740
    sget-object v11, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3741
    .local v11, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 3742
    .local v2, "dataRead":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3743
    .local v17, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    const/4 v15, 0x0

    .line 3745
    .local v15, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3747
    sget-object v11, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3750
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v11, v3, :cond_1

    .line 3752
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetHotspotClusterDetail(JLjava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 3758
    :cond_1
    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3760
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .local v18, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :try_start_1
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3762
    .local v13, "jsonArray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    move-object/from16 v16, v15

    .end local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .local v16, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :goto_0
    :try_start_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v12, v3, :cond_2

    .line 3765
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 3766
    .local v14, "jsonObject":Lorg/json/JSONObject;
    new-instance v15, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    invoke-direct {v15, v14}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3767
    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3762
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v15

    .end local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    goto :goto_0

    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v15, v16

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object/from16 v17, v18

    .line 3785
    .end local v12    # "i":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v11, v3, :cond_3

    .line 3788
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v11}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 3770
    :catch_0
    move-exception v10

    .line 3772
    .local v10, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 3773
    sget-object v11, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3784
    goto :goto_1

    .line 3775
    .end local v10    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v10

    .line 3777
    .local v10, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    .line 3778
    sget-object v11, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3784
    goto :goto_1

    .line 3780
    .end local v10    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v10

    .line 3782
    .local v10, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v10}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 3783
    sget-object v11, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 3791
    .end local v10    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v17

    .line 3780
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_3
    move-exception v10

    move-object/from16 v17, v18

    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4

    .end local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v12    # "i":I
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_4
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object/from16 v17, v18

    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_4

    .line 3775
    .end local v12    # "i":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_5
    move-exception v10

    move-object/from16 v17, v18

    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_3

    .end local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v12    # "i":I
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_6
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object/from16 v17, v18

    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_3

    .line 3770
    .end local v12    # "i":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_7
    move-exception v10

    move-object/from16 v17, v18

    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_2

    .end local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .end local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v12    # "i":I
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    :catch_8
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .restart local v15    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    move-object/from16 v17, v18

    .end local v18    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    .restart local v17    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;>;"
    goto :goto_2
.end method

.method public syncGetHotspotClusters(DDDDILcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;)Ljava/util/ArrayList;
    .locals 25
    .param p1, "northEastLatitude"    # D
    .param p3, "southWestLongitude"    # D
    .param p5, "southWestLatitude"    # D
    .param p7, "northEastLongitude"    # D
    .param p9, "zoomRank"    # I
    .param p10, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDI",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetHotspotClustersListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 3118
    sget-object v16, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3119
    .local v16, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 3120
    .local v2, "dataRead":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3121
    .local v22, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    const/16 v20, 0x0

    .line 3123
    .local v20, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3125
    sget-object v16, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 3128
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_1

    .line 3130
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetHotspotClusters(JDDDDI)Ljava/lang/String;

    move-result-object v2

    .line 3136
    :cond_1
    :try_start_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3138
    .end local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .local v23, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :try_start_1
    new-instance v18, Lorg/json/JSONArray;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3140
    .local v18, "jsonArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "i":I
    move-object/from16 v21, v20

    .end local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .local v21, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    :goto_0
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    .line 3143
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 3144
    .local v19, "jsonObject":Lorg/json/JSONObject;
    new-instance v20, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3145
    .end local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3140
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v20

    .end local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    goto :goto_0

    .end local v19    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v20, v21

    .end local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    move-object/from16 v22, v23

    .line 3153
    .end local v17    # "i":I
    .end local v18    # "jsonArray":Lorg/json/JSONArray;
    .end local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_3

    .line 3156
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 3148
    :catch_0
    move-exception v15

    .line 3150
    .local v15, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 3151
    sget-object v16, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 3159
    .end local v15    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v22

    .line 3148
    .end local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :catch_1
    move-exception v15

    move-object/from16 v22, v23

    .end local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    goto :goto_2

    .end local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .end local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v17    # "i":I
    .restart local v18    # "jsonArray":Lorg/json/JSONArray;
    .restart local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    :catch_2
    move-exception v15

    move-object/from16 v20, v21

    .end local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .restart local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    move-object/from16 v22, v23

    .end local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    .restart local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;>;"
    goto :goto_2
.end method

.method public syncGetRunDetails(ILcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 8
    .param p1, "runId"    # I
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunDetailsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4359
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4360
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 4361
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4363
    .local v4, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    iget-boolean v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 4365
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4368
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v6, :cond_1

    .line 4370
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v6, v7, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetRunDetails(JI)Ljava/lang/String;

    move-result-object v0

    .line 4376
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4379
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v5, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .local v5, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    move-object v4, v5

    .line 4386
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .restart local v4    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :goto_0
    sget-object v6, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v6, :cond_2

    .line 4389
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v6, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v6

    .line 4381
    :catch_0
    move-exception v1

    .line 4383
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4384
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 4392
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v4
.end method

.method public syncGetRuns(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5415
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5416
    .local v2, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v0, 0x0

    .line 5417
    .local v0, "dataRead":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5418
    .local v8, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/4 v6, 0x0

    .line 5420
    .local v6, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    iget-boolean v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 5422
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5425
    :cond_0
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v2, v10, :cond_1

    .line 5427
    iget-wide v10, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v10, v11, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetRuns(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5433
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5435
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v9, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5437
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v7, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 5440
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 5441
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v6, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5442
    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_3
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5437
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_0

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .line 5460
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_1
    sget-object v10, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v2, v10, :cond_3

    .line 5463
    new-instance v10, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v10, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v10

    .line 5445
    :catch_0
    move-exception v1

    .line 5447
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5448
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5459
    goto :goto_1

    .line 5450
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 5452
    .local v1, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 5453
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5459
    goto :goto_1

    .line 5455
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 5457
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5458
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 5466
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v8

    .line 5455
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .line 5450
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .line 5445
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2

    .end local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v6    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v8, v9

    .end local v9    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v8    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2
.end method

.method public syncGetRunsCluster(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "zoomRank"    # I
    .param p3, "page"    # I
    .param p4, "paginateBy"    # I
    .param p5, "filter"    # Ljava/lang/String;
    .param p6, "productsFilter"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClusterListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5591
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5592
    .local v13, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 5593
    .local v2, "dataRead":Ljava/lang/String;
    const/16 v19, 0x0

    .line 5594
    .local v19, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/16 v17, 0x0

    .line 5596
    .local v17, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 5598
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5601
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v13, v3, :cond_1

    .line 5603
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetRunsCluster(JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5609
    :cond_1
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5611
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v20, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_1
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5613
    .local v15, "jsonArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    move-object/from16 v18, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v18, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v14, v3, :cond_2

    .line 5616
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 5617
    .local v16, "jsonObject":Lorg/json/JSONObject;
    new-instance v17, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5618
    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_3
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5613
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v18, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_0

    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .line 5636
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v13, v3, :cond_3

    .line 5639
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v13}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 5621
    :catch_0
    move-exception v12

    .line 5623
    .local v12, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 5624
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5635
    goto :goto_1

    .line 5626
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v12

    .line 5628
    .local v12, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    .line 5629
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5635
    goto :goto_1

    .line 5631
    .end local v12    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v12

    .line 5633
    .local v12, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v12}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5634
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 5642
    .end local v12    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v19

    .line 5631
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_3
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .line 5626
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .line 5621
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2
.end method

.method public syncGetRunsClusters(DDDDILcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;)Ljava/util/ArrayList;
    .locals 25
    .param p1, "northWestLatitude"    # D
    .param p3, "northWestLongitude"    # D
    .param p5, "southEastLatitude"    # D
    .param p7, "southEastLongitude"    # D
    .param p9, "zoomRank"    # I
    .param p10, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDI",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsClustersListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 4205
    sget-object v16, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4206
    .local v16, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 4207
    .local v2, "dataRead":Ljava/lang/String;
    const/16 v22, 0x0

    .line 4208
    .local v22, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    const/16 v20, 0x0

    .line 4210
    .local v20, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 4212
    sget-object v16, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 4215
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_1

    .line 4217
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetRunsClusters(JDDDDI)Ljava/lang/String;

    move-result-object v2

    .line 4223
    :cond_1
    :try_start_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4225
    .end local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .local v23, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :try_start_1
    new-instance v18, Lorg/json/JSONArray;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4227
    .local v18, "jsonArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "i":I
    move-object/from16 v21, v20

    .end local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .local v21, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    :goto_0
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    .line 4230
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 4231
    .local v19, "jsonObject":Lorg/json/JSONObject;
    new-instance v20, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4232
    .end local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4227
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v20

    .end local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    goto :goto_0

    .end local v19    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v20, v21

    .end local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    move-object/from16 v22, v23

    .line 4240
    .end local v17    # "i":I
    .end local v18    # "jsonArray":Lorg/json/JSONArray;
    .end local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_3

    .line 4243
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 4235
    :catch_0
    move-exception v15

    .line 4237
    .local v15, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 4238
    sget-object v16, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 4246
    .end local v15    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v22

    .line 4235
    .end local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :catch_1
    move-exception v15

    move-object/from16 v22, v23

    .end local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    goto :goto_2

    .end local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .end local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v17    # "i":I
    .restart local v18    # "jsonArray":Lorg/json/JSONArray;
    .restart local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    :catch_2
    move-exception v15

    move-object/from16 v20, v21

    .end local v21    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .restart local v20    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    move-object/from16 v22, v23

    .end local v23    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    .restart local v22    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;>;"
    goto :goto_2
.end method

.method public syncGetRunsInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "startDate"    # Ljava/lang/String;
    .param p3, "endDate"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "paginateBy"    # I
    .param p6, "productsFilter"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/aracademy/ARAcademyGetRunsIntervalListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 5085
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5086
    .local v13, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const/4 v2, 0x0

    .line 5087
    .local v2, "dataRead":Ljava/lang/String;
    const/16 v19, 0x0

    .line 5088
    .local v19, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    const/16 v17, 0x0

    .line 5090
    .local v17, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 5092
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5095
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v13, v3, :cond_1

    .line 5097
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncGetRunsInterval(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5103
    :cond_1
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5105
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .local v20, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :try_start_1
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5107
    .local v15, "jsonArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    move-object/from16 v18, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .local v18, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v14, v3, :cond_2

    .line 5110
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 5111
    .local v16, "jsonObject":Lorg/json/JSONObject;
    new-instance v17, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5112
    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_3
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5107
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v18, v17

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    goto :goto_0

    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .line 5130
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v13, v3, :cond_3

    .line 5133
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v3, v13}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 5115
    :catch_0
    move-exception v12

    .line 5117
    .local v12, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 5118
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5129
    goto :goto_1

    .line 5120
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v12

    .line 5122
    .local v12, "e":Ljava/text/ParseException;
    :goto_3
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    .line 5123
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 5129
    goto :goto_1

    .line 5125
    .end local v12    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v12

    .line 5127
    .local v12, "e":Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v12}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 5128
    sget-object v13, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto :goto_1

    .line 5136
    .end local v12    # "e":Ljava/net/MalformedURLException;
    :cond_3
    return-object v19

    .line 5125
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_3
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_4
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_4

    .line 5120
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_5
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_6
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_3

    .line 5115
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_7
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2

    .end local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    :catch_8
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v17    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object/from16 v19, v20

    .end local v20    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    .restart local v19    # "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    goto :goto_2
.end method

.method public syncPostResetPassword(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V
    .locals 5
    .param p1, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/aracademy/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 2503
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2504
    .local v0, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    const-string v1, ""

    .line 2506
    .local v1, "request":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->initOk:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2508
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 2511
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 2514
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2515
    const-string v2, "ARAcademyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->manager:J

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->nativeSyncPostResetPassword(JLjava/lang/String;)Ljava/lang/String;

    .line 2520
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    .line 2523
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v2

    .line 2526
    :cond_2
    return-void
.end method
