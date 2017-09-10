.class public Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
.super Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
.source "MyFlightsDetailsGpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;,
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;
    }
.end annotation


# static fields
.field private static final END_EXTREMITY:Ljava/lang/String; = "E"

.field private static final LINE_WIDTH:I = 0x2

.field private static final MAP_BOUNDS_PADDING:I = 0x64

.field private static final MAP_TYPE_HYBRID_LEVEL:I = 0x2

.field private static final MAP_TYPE_NORMAL_LEVEL:I = 0x0

.field private static final MAP_TYPE_SATELLITE_LEVEL:I = 0x1

.field private static final MAX_ALTITUDE_COLOR:I

.field private static final MAX_LATITUDE:I = 0x5a

.field private static final MAX_LONGITUDE:I = 0xb4

.field private static final MAX_NUMBER_OF_POINTS_DISPLAYED:I = 0xc8

.field private static final MIN_ALTITUDE_COLOR:I

.field private static final SAVED_MAP_TYPE:Ljava/lang/String; = "saved map type"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "my flights details map preferences"

.field private static final START_EXTREMITY:Ljava/lang/String; = "S"


# instance fields
.field private mCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentMapType:I

.field private mExtremityTextSize:F

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsLayoutRendered:Z

.field private mLineWidth:F

.field private mMapTypeButton:Landroid/widget/Button;

.field private mMapView:Lcom/google/android/gms/maps/MapView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMaxAltitude:F

.field private final mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinAltitude:F

.field private final mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x33

    const/16 v1, 0xbd

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MIN_ALTITUDE_COLOR:I

    .line 58
    const/16 v0, 0xeb

    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MAX_ALTITUDE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, -0x3f99800000000000L    # -180.0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    .line 78
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    .line 79
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    .line 83
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mIsLayoutRendered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->moveCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateMapType(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->setMap(Lcom/google/android/gms/maps/GoogleMap;)V

    return-void
.end method

.method private displayFlight()V
    .locals 24

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getRunDetails()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v13

    .line 178
    .local v13, "runDetails":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 179
    invoke-virtual {v13}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v14

    .line 181
    .local v14, "runDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 183
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->filterData(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 185
    .local v9, "filteredRunDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    .line 187
    .local v12, "listSize":I
    const/16 v16, 0x1

    .line 188
    .local v16, "step":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v12, v0, :cond_0

    .line 189
    div-int/lit16 v0, v12, 0xc8

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 192
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 194
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 195
    .local v15, "start":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getExtremityMarker(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 198
    const/4 v8, 0x0

    .line 199
    .local v8, "end":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    move/from16 v10, v16

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_1

    .line 200
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "end":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    check-cast v8, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 202
    .restart local v8    # "end":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    invoke-virtual {v15}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    .line 203
    .local v6, "altitude":F
    new-instance v17, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mLineWidth:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v17

    const/16 v18, 0x1

    .line 204
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v17

    .line 205
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v17

    new-instance v18, Lcom/google/android/gms/maps/model/LatLng;

    .line 206
    invoke-virtual {v15}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v20

    invoke-virtual {v15}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v17

    new-instance v18, Lcom/google/android/gms/maps/model/LatLng;

    .line 207
    invoke-virtual {v8}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v20

    invoke-virtual {v8}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v17

    const/16 v18, 0x1

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getColorForAltitude(FZ)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v11

    .line 209
    .local v11, "line":Lcom/google/android/gms/maps/model/PolylineOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 211
    move-object v15, v8

    .line 199
    add-int v10, v10, v16

    goto :goto_0

    .line 215
    .end local v6    # "altitude":F
    .end local v11    # "line":Lcom/google/android/gms/maps/model/PolylineOptions;
    :cond_1
    if-eqz v8, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getExtremityMarker(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 219
    :cond_2
    new-instance v7, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 220
    .local v7, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v7, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->moveCamera()V

    .line 225
    .end local v7    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v8    # "end":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .end local v9    # "filteredRunDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    .end local v10    # "i":I
    .end local v12    # "listSize":I
    .end local v14    # "runDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    .end local v15    # "start":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .end local v16    # "step":I
    :cond_3
    return-void
.end method

.method private filterData(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v2, "filteredDataList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 321
    .local v8, "previousLatitude":D
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 323
    .local v10, "previousLongitude":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 324
    .local v1, "data":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v4

    .line 325
    .local v4, "latitude":D
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v6

    .line 327
    .local v6, "longitude":D
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->isPositionInvalid(DD)Z

    move-result v12

    if-nez v12, :cond_0

    .line 331
    cmpl-double v12, v4, v8

    if-nez v12, :cond_1

    cmpl-double v12, v6, v10

    if-eqz v12, :cond_0

    .line 332
    :cond_1
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateLatLngBounds(DD)V

    .line 334
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v12

    int-to-float v0, v12

    .line 335
    .local v0, "altitude":F
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateAltitudeBounds(F)V

    .line 337
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    move-wide v8, v4

    .line 340
    move-wide v10, v6

    goto :goto_0

    .line 343
    .end local v0    # "altitude":F
    .end local v1    # "data":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :cond_2
    return-object v2
.end method

.method private getColorForAltitude(FZ)I
    .locals 11
    .param p1, "altitude"    # F
    .param p2, "counterClockwise"    # Z

    .prologue
    .line 263
    iget v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    iget v9, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 264
    const/high16 v6, 0x3f800000    # 1.0f

    .line 274
    .local v6, "ratio":F
    :goto_0
    const/4 v8, 0x3

    new-array v7, v8, [F

    .line 275
    .local v7, "wantedColorHsv":[F
    const/4 v8, 0x3

    new-array v4, v8, [F

    .line 276
    .local v4, "minAltitudeColorHsv":[F
    const/4 v8, 0x3

    new-array v2, v8, [F

    .line 277
    .local v2, "maxAltitudeColorHsv":[F
    sget v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MIN_ALTITUDE_COLOR:I

    invoke-static {v8, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 278
    sget v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MAX_ALTITUDE_COLOR:I

    invoke-static {v8, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 281
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_1

    .line 282
    aget v8, v4, v1

    aget v9, v2, v1

    aget v10, v4, v1

    sub-float/2addr v9, v10

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v7, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "i":I
    .end local v2    # "maxAltitudeColorHsv":[F
    .end local v4    # "minAltitudeColorHsv":[F
    .end local v6    # "ratio":F
    .end local v7    # "wantedColorHsv":[F
    :cond_0
    iget v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    sub-float v8, p1, v8

    iget v9, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    iget v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    sub-float/2addr v9, v10

    div-float v6, v8, v9

    .restart local v6    # "ratio":F
    goto :goto_0

    .line 290
    .restart local v1    # "i":I
    .restart local v2    # "maxAltitudeColorHsv":[F
    .restart local v4    # "minAltitudeColorHsv":[F
    .restart local v7    # "wantedColorHsv":[F
    :cond_1
    const/4 v8, 0x0

    aget v5, v4, v8

    .line 291
    .local v5, "minH":F
    const/4 v8, 0x0

    aget v3, v2, v8

    .line 293
    .local v3, "maxH":F
    if-nez p2, :cond_3

    .line 294
    cmpg-float v8, v5, v3

    if-gtz v8, :cond_2

    .line 295
    sub-float v0, v3, v5

    .line 296
    .local v0, "hueDiff":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    add-float/2addr v9, v5

    aput v9, v7, v8

    .line 311
    :goto_2
    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    return v8

    .line 298
    .end local v0    # "hueDiff":F
    :cond_2
    const/high16 v8, 0x43b40000    # 360.0f

    sub-float v9, v5, v3

    sub-float v0, v8, v9

    .line 299
    .restart local v0    # "hueDiff":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    add-float/2addr v9, v5

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float/2addr v9, v10

    aput v9, v7, v8

    goto :goto_2

    .line 302
    .end local v0    # "hueDiff":F
    :cond_3
    cmpg-float v8, v5, v3

    if-gtz v8, :cond_4

    .line 303
    const/high16 v8, 0x43b40000    # 360.0f

    sub-float v9, v3, v5

    sub-float v0, v8, v9

    .line 304
    .restart local v0    # "hueDiff":F
    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v9, v5

    mul-float v10, v6, v0

    sub-float/2addr v9, v10

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float/2addr v9, v10

    aput v9, v7, v8

    goto :goto_2

    .line 306
    .end local v0    # "hueDiff":F
    :cond_4
    sub-float v0, v5, v3

    .line 307
    .restart local v0    # "hueDiff":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    sub-float v9, v5, v9

    aput v9, v7, v8

    goto :goto_2
.end method

.method private getExtremityMarker(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 14
    .param p1, "data"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startingExtremity"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200ef

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 237
    .local v2, "extremity":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 240
    .local v4, "paint":Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 241
    iget v9, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mExtremityTextSize:F

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getColorForAltitude(FZ)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float v7, v9, v10

    .line 245
    .local v7, "textSize":F
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    sub-float v6, v9, v10

    .line 246
    .local v6, "textBaselineDiff":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v8, v9, v6

    .line 248
    .local v8, "yPos":F
    if-eqz p2, :cond_0

    .line 249
    const-string v9, "S"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 255
    .local v3, "extremityDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v10

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v12

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 257
    .local v5, "position":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v9, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v9, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v9

    return-object v9

    .line 251
    .end local v3    # "extremityDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v5    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    const-string v9, "E"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private isPositionInvalid(DD)Z
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 347
    cmpl-double v0, p1, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveCamera()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mIsLayoutRendered:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 231
    :cond_0
    return-void
.end method

.method private setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 5
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 407
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 409
    const/4 v0, 0x2

    .line 411
    .local v0, "mapType":I
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "saved map type"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 415
    :cond_0
    invoke-direct {p0, v0, v4}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateMapType(IZ)V

    .line 417
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 419
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->displayFlight()V

    .line 420
    return-void
.end method

.method private updateAltitudeBounds(F)V
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    .line 367
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 368
    iput p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    .line 370
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 371
    iput p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    .line 373
    :cond_1
    return-void
.end method

.method private updateLatLngBounds(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p1, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p1, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p3, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p3, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    .line 364
    :cond_3
    return-void
.end method

.method private updateMapType(IZ)V
    .locals 2
    .param p1, "mapType"    # I
    .param p2, "saveInSharedPrefs"    # Z

    .prologue
    .line 376
    iput p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved map type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 384
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    packed-switch v0, :pswitch_data_0

    .line 404
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my flights details map preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 97
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mExtremityTextSize:F

    .line 98
    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mLineWidth:F

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    const v0, 0x7f04008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0256

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 166
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onLowMemory()V

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 174
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 158
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->displayFlight()V

    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    :cond_0
    return-void
.end method
