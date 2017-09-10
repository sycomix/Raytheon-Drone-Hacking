.class Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$ARUtilsRFCommFtpHolder;
.super Ljava/lang/Object;
.source "ARUtilsRFCommFtp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ARUtilsRFCommFtpHolder"
.end annotation


# static fields
.field private static final instance:Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;-><init>(Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$1;)V

    sput-object v0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$ARUtilsRFCommFtpHolder;->instance:Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$ARUtilsRFCommFtpHolder;->instance:Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    return-object v0
.end method
