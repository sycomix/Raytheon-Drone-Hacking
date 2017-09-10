.class public final enum Lcom/google/gdata/data/projecthosting/Repository$Type;
.super Ljava/lang/Enum;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/projecthosting/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/projecthosting/Repository$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/projecthosting/Repository$Type;

.field public static final enum HG:Lcom/google/gdata/data/projecthosting/Repository$Type;

.field public static final enum SVN:Lcom/google/gdata/data/projecthosting/Repository$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/projecthosting/Repository$Type;

    const-string v1, "HG"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/projecthosting/Repository$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/projecthosting/Repository$Type;->HG:Lcom/google/gdata/data/projecthosting/Repository$Type;

    .line 57
    new-instance v0, Lcom/google/gdata/data/projecthosting/Repository$Type;

    const-string v1, "SVN"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/projecthosting/Repository$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/projecthosting/Repository$Type;->SVN:Lcom/google/gdata/data/projecthosting/Repository$Type;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/projecthosting/Repository$Type;

    sget-object v1, Lcom/google/gdata/data/projecthosting/Repository$Type;->HG:Lcom/google/gdata/data/projecthosting/Repository$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/projecthosting/Repository$Type;->SVN:Lcom/google/gdata/data/projecthosting/Repository$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/projecthosting/Repository$Type;->$VALUES:[Lcom/google/gdata/data/projecthosting/Repository$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/projecthosting/Repository$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/projecthosting/Repository$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Repository$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/projecthosting/Repository$Type;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/data/projecthosting/Repository$Type;->$VALUES:[Lcom/google/gdata/data/projecthosting/Repository$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/projecthosting/Repository$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/projecthosting/Repository$Type;

    return-object v0
.end method
