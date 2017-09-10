.class public Lcom/sun/mail/handlers/image_jpeg;
.super Lcom/sun/mail/handlers/image_gif;
.source "image_jpeg.java"


# static fields
.field static class$java$awt$Image:Ljava/lang/Class;

.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    sget-object v0, Lcom/sun/mail/handlers/image_jpeg;->class$java$awt$Image:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.awt.Image"

    invoke-static {v0}, Lcom/sun/mail/handlers/image_jpeg;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/handlers/image_jpeg;->class$java$awt$Image:Ljava/lang/Class;

    :goto_0
    const-string v2, "image/jpeg"

    const-string v3, "JPEG Image"

    invoke-direct {v1, v0, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sun/mail/handlers/image_jpeg;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-void

    :cond_0
    sget-object v0, Lcom/sun/mail/handlers/image_jpeg;->class$java$awt$Image:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sun/mail/handlers/image_gif;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sun/mail/handlers/image_jpeg;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method
