.class public Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
.super Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
.source "MyFlightsDetailsMediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;,
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;,
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;,
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;
    }
.end annotation


# instance fields
.field private mItemSize:I

.field private mListener:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaAdapter:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

.field private final mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

.field private mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMedias:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    .line 44
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;

    invoke-direct {v0, p0, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMedias:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->requestMediasThumbnails()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMedias:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMedias:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mListener:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    return-object v0
.end method

.method private requestMediasThumbnails()V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 99
    .local v0, "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    iget v3, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mItemSize:I

    iget v4, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mItemSize:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/parrot/freeflight/core/academy/MediaManager;->requestMediasInfos(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;II)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    :try_start_0
    check-cast p1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mListener:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Contexts using MyFlightsDetailsMediaFragment should implement MyFlightsDetailsMediaFragmentListener"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    const v3, 0x7f04008c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 67
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 69
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mItemSize:I

    .line 71
    const v3, 0x7f0f0259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 72
    .local v1, "mediasGridView":Landroid/widget/GridView;
    new-instance v3, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    .line 73
    iget-object v3, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    new-instance v3, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$2;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 94
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 89
    return-void
.end method
