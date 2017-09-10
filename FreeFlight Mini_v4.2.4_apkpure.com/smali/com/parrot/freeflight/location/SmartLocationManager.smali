.class public Lcom/parrot/freeflight/location/SmartLocationManager;
.super Ljava/lang/Object;
.source "SmartLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;,
        Lcom/parrot/freeflight/location/SmartLocationManager$LocationMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_SKYCONTROLLER_ACCURACY:F = 5.0f

.field private static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field private static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field private static final GPS_FIX_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final GPS_MIN_ACCURACY_IN_METER:F = 12.0f

.field private static final GPS_REFRESH_DISTANCE:F = 0.0f

.field private static final GPS_REFRESH_TIME:J = 0x2710L

.field static final LOCATION_MODE_DEFAULT:I = 0x0

.field static final LOCATION_MODE_FUSED:I = 0x4

.field static final LOCATION_MODE_GPS_FULL:I = 0x5

.field static final LOCATION_MODE_GPS_LIGHT:I = 0x3

.field static final LOCATION_MODE_REMOTE_CONTROL:I = 0x2

.field static final LOCATION_MODE_STOPPED:I = 0x1

.field public static final SKYCONTROLLER_PROVIDER:Ljava/lang/String; = "skycontroller"

.field private static final SWITCH_ON_FRESHNESS_CLIFF_MS:J = 0x2af8L

.field private static final SWITCH_ON_FRESHNESS_CLIFF_NS:J = 0x28fa6ae00L

.field public static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFusedLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGPSLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGooglePlayServicesAvailable:Z

.field private final mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastTakeOffProductLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/LocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLocationSettingsReady:Z

.field private mMode:I

.field private final mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhoneGpsFixHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhoneGpsFixListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneGpsFixed:Z

.field private mRequestingGoogleLocation:Z

.field private mSelectedLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSkyControllerLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWantingGoogleLocation:Z

.field private mWasMissingPermissions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/location/SmartLocationManager;->GPS_FIX_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/parrot/freeflight/location/SmartLocationManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$1;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/parrot/freeflight/location/SmartLocationManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$2;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    .line 169
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 170
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    .line 171
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/parrot/freeflight/location/SmartLocationManager$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$4;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/location/SmartLocationManager$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$3;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApiIfAvailable(Lcom/google/android/gms/common/api/Api;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixHandler:Landroid/os/Handler;

    .line 204
    return-void

    :cond_0
    move v0, v2

    .line 170
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/location/SmartLocationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager;->notifyPhoneGpsFixStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/location/SmartLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/location/SmartLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/location/SmartLocationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGoogleGpsRequest()V

    return-void
.end method

.method public static checkAccuracy(Landroid/location/Location;F)Z
    .locals 1
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "accuracy"    # F

    .prologue
    .line 654
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static createLocationRequest(JJI)Lcom/google/android/gms/location/LocationRequest;
    .locals 2
    .param p0, "intervalMs"    # J
    .param p2, "fastestIntervalMs"    # J
    .param p4, "priority"    # I

    .prologue
    .line 658
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 659
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 660
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 661
    invoke-virtual {v0, p4}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 662
    return-object v0
.end method

.method private static isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 10
    .param p0, "locationA"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "locationB"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide v8, 0x28fa6ae00L

    const-wide/16 v6, 0x2af8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    if-nez p0, :cond_1

    move v0, v1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 619
    :cond_1
    if-eqz p1, :cond_0

    .line 625
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 626
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 629
    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 634
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 635
    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 644
    goto :goto_0

    .line 647
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private notifyPhoneGpsFixStatus(Z)V
    .locals 3
    .param p1, "phoneGpsFixed"    # Z

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    if-eq v1, p1, :cond_0

    .line 247
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    .line 248
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    .line 249
    .local v0, "gpsFixStatusListener":Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
    iget-boolean v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;->onGpsStatusChange(Z)V

    goto :goto_0

    .line 252
    .end local v0    # "gpsFixStatusListener":Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
    :cond_0
    return-void
.end method

.method private startFusedRequest()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x2710

    .line 455
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 456
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 458
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateMissingPermissionsFlag()V

    .line 471
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v1, :cond_1

    .line 462
    const-wide/16 v4, 0x3e8

    const/16 v1, 0x64

    invoke-static {v2, v3, v4, v5, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->createLocationRequest(JJI)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 463
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->tryToStartGoogleGpsRequest()V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    const/4 v7, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    .line 469
    :cond_2
    const-string v1, "FFMini.Location"

    const-string v2, "startFusedRequest no feature location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startGoogleGpsRequest()V
    .locals 3

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    .line 547
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    if-nez v0, :cond_1

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 549
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 550
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 551
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    .line 553
    const-string v0, "FFMini.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start Google Gps Request with settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 560
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateMissingPermissionsFlag()V

    goto :goto_0
.end method

.method private startGpsRequest(Z)V
    .locals 7
    .param p1, "lowRate"    # Z

    .prologue
    const-wide/16 v2, 0x2710

    .line 432
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 433
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.location.gps"

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 435
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateMissingPermissionsFlag()V

    .line 452
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v0, :cond_2

    .line 439
    if-eqz p1, :cond_1

    move-wide v0, v2

    :goto_1
    const-wide/16 v2, 0x3e8

    const/16 v4, 0x64

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/location/SmartLocationManager;->createLocationRequest(JJI)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 440
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->tryToStartGoogleGpsRequest()V

    goto :goto_0

    .line 439
    :cond_1
    const-wide/16 v0, 0x1388

    goto :goto_1

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    if-eqz p1, :cond_3

    :goto_2
    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/parrot/freeflight/location/SmartLocationManager;->GPS_FIX_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 442
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 446
    :cond_4
    const-string v0, "FFMini.Location"

    const-string v1, "startGpsRequest no Google Play Services and no gps provider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_5
    const-string v0, "FFMini.Location"

    const-string v1, "startGpsRequest no gps feature"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 362
    packed-switch p1, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 364
    :pswitch_0
    const-string v0, "FFMini.Location"

    const-string v1, "startMode skycontroller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :pswitch_1
    const-string v0, "FFMini.Location"

    const-string v1, "startMode stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :pswitch_2
    const-string v0, "FFMini.Location"

    const-string v1, "startMode default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startFusedRequest()V

    goto :goto_0

    .line 379
    :pswitch_3
    const-string v0, "FFMini.Location"

    const-string v1, "startMode fused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startFusedRequest()V

    goto :goto_0

    .line 384
    :pswitch_4
    const-string v0, "FFMini.Location"

    const-string v1, "startMode gps low rate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGpsRequest(Z)V

    goto :goto_0

    .line 389
    :pswitch_5
    const-string v0, "FFMini.Location"

    const-string v1, "startMode gps high rate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGpsRequest(Z)V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private stopGoogleGpsRequest()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 563
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    .line 564
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    .line 565
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    if-eqz v0, :cond_0

    .line 566
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    .line 568
    const-string v0, "FFMini.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop Google Gps Request with settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 574
    :cond_0
    return-void
.end method

.method private stopMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 396
    packed-switch p1, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    goto :goto_0

    .line 405
    :pswitch_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    :cond_1
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 413
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :cond_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v0, :cond_3

    .line 415
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->stopGoogleGpsRequest()V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private tryToStartGoogleGpsRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGoogleGpsRequest()V

    .line 484
    :goto_0
    return-void

    .line 478
    :cond_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    .line 479
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkGoogleLocationSettings(Landroid/app/Activity;I)V

    goto :goto_0

    .line 482
    :cond_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    goto :goto_0
.end method

.method private updateMissingPermissionsFlag()V
    .locals 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    .line 427
    const-string v0, "FFMini.Location"

    const-string v1, "Must ask in some activity Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    return-void
.end method

.method private updatePhoneGpsFixStatus(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 240
    .local v0, "phoneGpsFixed":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->notifyPhoneGpsFixStatus(Z)V

    .line 243
    return-void

    .line 239
    .end local v0    # "phoneGpsFixed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectedLocation()V
    .locals 6

    .prologue
    .line 579
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 580
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    .line 587
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 588
    const-string v1, "FFMini.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedLocation lat = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], long = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] provider =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | accuracy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 593
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationListener;

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-interface {v1, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 581
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGPSLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGPSLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 584
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 595
    .restart local v0    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v2

    .line 597
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V
    .locals 1
    .param p1, "gpsFixStatusListener"    # Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;->onGpsStatusChange(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public checkGoogleLocationSettings(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 498
    const-string v2, "FFMini.Location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGoogleLocationSettings googleplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 501
    new-instance v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 502
    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 503
    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v0

    .line 504
    .local v0, "builder":Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 505
    .local v1, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    new-instance v2, Lcom/parrot/freeflight/location/SmartLocationManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/parrot/freeflight/location/SmartLocationManager$5;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 543
    .end local v0    # "builder":Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .end local v1    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v2, "FFMini.Location"

    const-string v3, "checkGoogleLocationSettings not needed because we are using SkyController location"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .prologue
    .line 274
    iget-boolean v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    sget-object v5, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v6, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5, v6}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v4

    .line 276
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 278
    .local v1, "extra":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 279
    invoke-virtual {v4, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 299
    .end local v1    # "extra":Landroid/os/Bundle;
    .end local v4    # "location":Landroid/location/Location;
    :cond_0
    :goto_1
    return-object v4

    .line 277
    .restart local v4    # "location":Landroid/location/Location;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 283
    .end local v4    # "location":Landroid/location/Location;
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    if-nez v5, :cond_3

    .line 284
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 285
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 286
    const-string v5, "FFMini.Location"

    const-string v6, "Must ask in some activity Location permission"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    goto :goto_1

    .line 288
    :cond_4
    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 289
    .local v2, "lastKnownLocationGPS":Landroid/location/Location;
    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 290
    .local v3, "lastKnownLocationNetwork":Landroid/location/Location;
    invoke-static {v2, v3}, Lcom/parrot/freeflight/location/LocationUtils;->getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 291
    .local v0, "choosedLocation":Landroid/location/Location;
    if-eqz v0, :cond_5

    .line 292
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 293
    .restart local v1    # "extra":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .end local v1    # "extra":Landroid/os/Bundle;
    :cond_5
    move-object v4, v0

    .line 296
    goto :goto_1

    .line 292
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_2
.end method

.method public getUserLocation()Landroid/location/Location;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "location":Landroid/location/Location;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 258
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    const-string v1, "FFMini.Location"

    const-string v2, "Must ask in some activity Location permission"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 262
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLastTakeOffProductLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    const-string v1, "FFMini.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged() called provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", location = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 309
    .local v0, "extra":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 311
    const-string v1, "skycontroller"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    .line 314
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 315
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateSelectedLocation()V

    .line 325
    :cond_0
    :goto_1
    return-void

    .line 308
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 316
    .restart local v0    # "extra":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager;->updatePhoneGpsFixStatus(Landroid/location/Location;)V

    .line 318
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGPSLocation:Landroid/location/Location;

    .line 323
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateSelectedLocation()V

    goto :goto_1

    .line 321
    :cond_3
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    goto :goto_2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 347
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 342
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 329
    const-string v1, "FFMini.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChanged() called with: provider = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], status = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], extras = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
    :cond_0
    monitor-exit v2

    .line 337
    return-void

    .line 336
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V
    .locals 1
    .param p1, "gpsFixStatusListener"    # Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/LocationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->stopMode(I)V

    .line 225
    :cond_0
    return-void

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/LocationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startFusedRequest()V

    .line 216
    :cond_0
    return-void

    .line 212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setLastTakeOffProductLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 602
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 603
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 604
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 606
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLastTakeOffProductLocation:Landroid/location/Location;

    .line 607
    return-void

    .line 602
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setLocationSettingsReady(Z)V
    .locals 3
    .param p1, "ready"    # Z

    .prologue
    .line 488
    const-string v0, "FFMini.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationSettingsReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWantingGoogleLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    .line 491
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGoogleGpsRequest()V

    .line 494
    :cond_0
    return-void
.end method

.method protected setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 350
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->stopMode(I)V

    .line 355
    iput p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    .line 358
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager;->startMode(I)V

    goto :goto_0
.end method
