.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;
.super Ljava/lang/Object;
.source "DroneMemoryListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$1;

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/model/MediaItem;)I
    .locals 6
    .param p1, "lhs"    # Lcom/parrot/freeflight/media/model/MediaItem;
    .param p2, "rhs"    # Lcom/parrot/freeflight/media/model/MediaItem;

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItem;->getDate()Ljava/lang/String;

    move-result-object v2

    .local v2, "lhsItemDate":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/parrot/freeflight/media/model/MediaItem;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "rhsItemDate":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 416
    :try_start_0
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 417
    .local v1, "lhsDate":Ljava/util/Date;
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 418
    .local v3, "rhsDate":Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 423
    .end local v1    # "lhsDate":Ljava/util/Date;
    .end local v3    # "rhsDate":Ljava/util/Date;
    :goto_0
    return v5

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 423
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 407
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaItem;

    check-cast p2, Lcom/parrot/freeflight/media/model/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;->compare(Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/model/MediaItem;)I

    move-result v0

    return v0
.end method
