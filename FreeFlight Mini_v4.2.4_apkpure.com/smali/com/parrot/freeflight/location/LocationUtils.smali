.class public Lcom/parrot/freeflight/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final LAT_MAX:D = 90.0

.field private static final LAT_MIN:D = -90.0

.field private static final LNG_MAX:D = 180.0

.field private static final LNG_MIN:D = -180.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 16
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "currentBestLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 22
    if-nez p0, :cond_1

    .line 56
    .end local p1    # "currentBestLocation":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p1

    .line 24
    .restart local p1    # "currentBestLocation":Landroid/location/Location;
    :cond_1
    if-nez p1, :cond_2

    move-object/from16 p1, p0

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    const v0, 0x1d4c0

    .line 29
    .local v0, "TWO_MINUTES":I
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    sub-long v10, v12, v14

    .line 30
    .local v10, "timeDelta":J
    int-to-long v12, v0

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    const/4 v7, 0x1

    .line 31
    .local v7, "isSignificantlyNewer":Z
    :goto_1
    neg-int v9, v0

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    const/4 v8, 0x1

    .line 32
    .local v8, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_5

    const/4 v5, 0x1

    .line 36
    .local v5, "isNewer":Z
    :goto_3
    if-eqz v7, :cond_6

    move-object/from16 p1, p0

    .line 37
    goto :goto_0

    .line 30
    .end local v5    # "isNewer":Z
    .end local v7    # "isSignificantlyNewer":Z
    .end local v8    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 31
    .restart local v7    # "isSignificantlyNewer":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 32
    .restart local v8    # "isSignificantlyOlder":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 38
    .restart local v5    # "isNewer":Z
    :cond_6
    if-nez v8, :cond_0

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    sub-float/2addr v9, v12

    float-to-int v1, v9

    .line 45
    .local v1, "accuracyDelta":I
    if-lez v1, :cond_9

    const/4 v3, 0x1

    .line 46
    .local v3, "isLessAccurate":Z
    :goto_4
    if-gez v1, :cond_a

    const/4 v4, 0x1

    .line 47
    .local v4, "isMoreAccurate":Z
    :goto_5
    const/16 v9, 0xc8

    if-le v1, v9, :cond_b

    const/4 v6, 0x1

    .line 50
    .local v6, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/parrot/freeflight/location/LocationUtils;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 53
    .local v2, "isFromSameProvider":Z
    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-eqz v5, :cond_0

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    :cond_8
    move-object/from16 p1, p0

    .line 54
    goto :goto_0

    .line 45
    .end local v2    # "isFromSameProvider":Z
    .end local v3    # "isLessAccurate":Z
    .end local v4    # "isMoreAccurate":Z
    .end local v6    # "isSignificantlyLessAccurate":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 46
    .restart local v3    # "isLessAccurate":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 47
    .restart local v4    # "isMoreAccurate":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_6
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "locationMode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 97
    :goto_0
    if-eqz v2, :cond_0

    .line 100
    .end local v2    # "locationMode":I
    :goto_1
    return v3

    .line 93
    .restart local v2    # "locationMode":I
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v3, v4

    .line 97
    goto :goto_1

    .line 99
    .end local v2    # "locationMode":I
    :cond_1
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 100
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "provider2"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static latLngFromValues(DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 81
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needLocationForBleScan()Z
    .locals 2

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
