.class public Lcom/parrot/freeflight/util/AntennaPositionChecker;
.super Ljava/lang/Object;
.source "AntennaPositionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/util/AntennaPositionChecker$NetworkType;
    }
.end annotation


# static fields
.field public static final BLE:I = 0x1

.field private static final SPECIFIC_DEVICES_BLE:Ljava/lang/String; = "orientation_specific_devices_BLE.txt"

.field private static final SPECIFIC_DEVICES_WIFI:Ljava/lang/String; = "orientation_specific_devices_WIFI.txt"

.field private static final TAG:Ljava/lang/String; = "Antenna checker"

.field public static final WIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForceReverseRotation(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 33
    .local v2, "specificDevicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 34
    const-string v3, "orientation_specific_devices_WIFI.txt"

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/AntennaPositionChecker;->updateAntennaSpecificList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 39
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 40
    .local v1, "shouldForceReverseOrientation":Z
    if-eqz v2, :cond_4

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "device":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    const/4 v1, 0x1

    .line 50
    .end local v0    # "device":Ljava/lang/String;
    :cond_2
    :goto_1
    return v1

    .line 35
    .end local v1    # "shouldForceReverseOrientation":Z
    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 36
    const-string v3, "orientation_specific_devices_BLE.txt"

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/AntennaPositionChecker;->updateAntennaSpecificList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 48
    .restart local v1    # "shouldForceReverseOrientation":Z
    :cond_4
    const-string v3, "Antenna checker"

    const-string v4, "checkForceReverseRotation: listToProcess is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static updateAntennaSpecificList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, "specificDevicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 57
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 58
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 61
    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "device":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "device":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz v3, :cond_0

    .line 69
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-object v5

    .line 67
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 70
    :catch_1
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 71
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_2

    .line 69
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    :cond_2
    :goto_2
    throw v6

    .line 70
    :catch_3
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
