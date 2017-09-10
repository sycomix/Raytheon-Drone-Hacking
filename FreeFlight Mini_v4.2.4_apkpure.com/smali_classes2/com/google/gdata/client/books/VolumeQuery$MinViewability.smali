.class public final enum Lcom/google/gdata/client/books/VolumeQuery$MinViewability;
.super Ljava/lang/Enum;
.source "VolumeQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/books/VolumeQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinViewability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/books/VolumeQuery$MinViewability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

.field public static final enum FULL:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

.field public static final enum NONE:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

.field public static final enum PARTIAL:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    const-string v1, "FULL"

    const-string v2, "full"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->FULL:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .line 43
    new-instance v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->NONE:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .line 46
    new-instance v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    const-string v1, "PARTIAL"

    const-string v2, "partial"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->PARTIAL:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    sget-object v1, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->FULL:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->NONE:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->PARTIAL:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->$VALUES:[Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->value:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/books/VolumeQuery$MinViewability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/books/VolumeQuery$MinViewability;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->$VALUES:[Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    invoke-virtual {v0}, [Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->value:Ljava/lang/String;

    return-object v0
.end method
