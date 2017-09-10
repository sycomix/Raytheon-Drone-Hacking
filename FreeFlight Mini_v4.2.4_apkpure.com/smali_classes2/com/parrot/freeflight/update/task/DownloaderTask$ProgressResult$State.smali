.class public final enum Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
.super Ljava/lang/Enum;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

.field public static final enum FINISHED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

.field public static final enum INTERNET_NEEDED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

.field public static final enum NOT_STARTED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

.field public static final enum ONGOING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

.field public static final enum STARTING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

.field public static final enum UPDATE_AVAILABLE:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 534
    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    const-string v1, "INTERNET_NEEDED"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->INTERNET_NEEDED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    const-string v1, "UPDATE_AVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->UPDATE_AVAILABLE:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->STARTING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    const-string v1, "ONGOING"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    .line 533
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->INTERNET_NEEDED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->UPDATE_AVAILABLE:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->STARTING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->$VALUES:[Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

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
    .line 533
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 533
    const-class v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->$VALUES:[Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    return-object v0
.end method
