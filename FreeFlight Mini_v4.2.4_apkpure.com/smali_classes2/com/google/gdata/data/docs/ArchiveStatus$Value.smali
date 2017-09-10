.class public final enum Lcom/google/gdata/data/docs/ArchiveStatus$Value;
.super Ljava/lang/Enum;
.source "ArchiveStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/docs/ArchiveStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/docs/ArchiveStatus$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/docs/ArchiveStatus$Value;

.field public static final enum ABORTED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

.field public static final enum ARCHIVING:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

.field public static final enum EXPIRED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

.field public static final enum FINISHED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

.field public static final enum FLATTENING:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

.field public static final enum QUEUED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/docs/ArchiveStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->ABORTED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    .line 53
    new-instance v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    const-string v1, "ARCHIVING"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/docs/ArchiveStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->ARCHIVING:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    .line 56
    new-instance v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/docs/ArchiveStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->EXPIRED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    .line 59
    new-instance v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/docs/ArchiveStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->FINISHED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    .line 62
    new-instance v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    const-string v1, "FLATTENING"

    invoke-direct {v0, v1, v7}, Lcom/google/gdata/data/docs/ArchiveStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->FLATTENING:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    .line 65
    new-instance v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    const-string v1, "QUEUED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/docs/ArchiveStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->QUEUED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    sget-object v1, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->ABORTED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->ARCHIVING:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->EXPIRED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->FINISHED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->FLATTENING:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->QUEUED:Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->$VALUES:[Lcom/google/gdata/data/docs/ArchiveStatus$Value;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/ArchiveStatus$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/docs/ArchiveStatus$Value;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/gdata/data/docs/ArchiveStatus$Value;->$VALUES:[Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/docs/ArchiveStatus$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/docs/ArchiveStatus$Value;

    return-object v0
.end method
