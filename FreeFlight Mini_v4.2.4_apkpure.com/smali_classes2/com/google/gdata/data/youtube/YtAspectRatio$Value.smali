.class public final enum Lcom/google/gdata/data/youtube/YtAspectRatio$Value;
.super Ljava/lang/Enum;
.source "YtAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/YtAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/YtAspectRatio$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

.field public static final enum WIDE_SCREEN:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;


# instance fields
.field private final xmlName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    const-string v1, "WIDE_SCREEN"

    const-string v2, "widescreen"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->WIDE_SCREEN:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    sget-object v1, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->WIDE_SCREEN:Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->$VALUES:[Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "xmlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->xmlName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/youtube/YtAspectRatio$Value;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->xmlName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtAspectRatio$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/YtAspectRatio$Value;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->$VALUES:[Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/YtAspectRatio$Value;

    return-object v0
.end method


# virtual methods
.method public getXmlName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtAspectRatio$Value;->xmlName:Ljava/lang/String;

    return-object v0
.end method
