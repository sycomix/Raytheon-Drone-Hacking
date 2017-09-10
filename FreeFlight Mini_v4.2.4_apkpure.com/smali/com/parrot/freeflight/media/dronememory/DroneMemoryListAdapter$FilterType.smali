.class public final enum Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
.super Ljava/lang/Enum;
.source "DroneMemoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

.field public static final enum NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

.field public static final enum PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

.field public static final enum VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    const-string v1, "PHOTO"

    const-string v2, "photo"

    invoke-direct {v0, v1, v3, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 284
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    const-string v1, "VIDEO"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 285
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->$VALUES:[Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput-object p3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    .line 291
    return-void
.end method

.method static getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->values()[Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    move-result-object v1

    .line 295
    .local v1, "values":[Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 296
    .local v0, "type":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    iget-object v4, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    .end local v0    # "type":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    :goto_1
    return-object v0

    .line 295
    .restart local v0    # "type":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "type":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 282
    const-class v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->$VALUES:[Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    return-object v0
.end method
