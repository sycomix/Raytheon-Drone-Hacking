.class public Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;
.super Ljava/lang/Object;
.source "FtpNetworkHandler.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/FtpNetworkHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FtpWifiHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceWifiManager"


# instance fields
.field private final mDestIP:Ljava/lang/String;

.field private final mDestPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "productIP"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "devicePort"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestIP:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestPort:I

    .line 56
    return-void
.end method


# virtual methods
.method public varargs close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V
    .locals 3
    .param p1, "managers"    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 89
    .local v0, "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    return-void
.end method

.method public varargs init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "managers"    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 60
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 61
    .local v2, "result":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    iget-object v4, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestIP:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 62
    const-string v4, "DeviceWifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init ftp handler productIP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DEVICE_PORT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 64
    .local v0, "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    iget-object v5, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestIP:Ljava/lang/String;

    iget v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestPort:I

    const-string v7, "anonymous"

    const-string v8, ""

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initWifiFtp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v2

    .line 65
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v2, v5, :cond_1

    .line 83
    .end local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    return-object v2

    .line 63
    .restart local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_2
    const-string v4, "DeviceWifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init ftp handler over mux, DEVICE_PORT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 72
    .restart local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v1

    .line 73
    .local v1, "mux":Lcom/parrot/mux/Mux;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v5

    iget v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;->mDestPort:I

    const-string v7, "anonymous"

    const-string v8, ""

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initWifiFtp(Lcom/parrot/mux/Mux$Ref;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v2

    .line 75
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v5, :cond_0

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
