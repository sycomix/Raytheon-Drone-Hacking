.class public final enum Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;
.super Ljava/lang/Enum;
.source "ResumableGDataFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/media/ResumableGDataFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

.field public static final enum INSERT:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

.field public static final enum UPDATE:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

.field public static final enum UPDATE_MEDIA_ONLY:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->INSERT:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    new-instance v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->UPDATE:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    new-instance v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    const-string v1, "UPDATE_MEDIA_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->UPDATE_MEDIA_ONLY:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    sget-object v1, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->INSERT:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->UPDATE:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->UPDATE_MEDIA_ONLY:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->$VALUES:[Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->$VALUES:[Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    invoke-virtual {v0}, [Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    return-object v0
.end method
