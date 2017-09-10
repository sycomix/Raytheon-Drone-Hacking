.class public final Lcom/google/gdata/data/youtube/YtRating$Value;
.super Ljava/lang/Object;
.source "YtRating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/YtRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final DISLIKE:Ljava/lang/String; = "dislike"

.field public static final LIKE:Ljava/lang/String; = "like"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dislike"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "like"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/YtRating$Value;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/gdata/data/youtube/YtRating$Value;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
