.class Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;
.super Landroid/os/AsyncTask;
.source "CsrUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCskeysFromXmlFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;Lcom/parrot/freeflight3/update/CsrUpdateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p2, "x1"    # Lcom/parrot/freeflight3/update/CsrUpdateManager$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "buildId"    # [Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x0

    .line 545
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cskey build id is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    aget-object v7, p1, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    aget-object v7, p1, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_1

    .line 547
    :cond_0
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cskey build id is not right,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 602
    :goto_0
    return-object v7

    .line 551
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->CSKEY_XML_FILE:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 554
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;

    invoke-direct {v6}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;-><init>()V

    .line 555
    .local v6, "parser":Lcom/csr/uenergy/ota/model/CsKeyXmlParser;
    const/4 v0, 0x0

    .line 556
    .local v0, "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 557
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 558
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->parse(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v0

    .end local v0    # "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .restart local v0    # "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    move-object v4, v5

    .line 564
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 565
    const/4 v4, 0x0

    .line 567
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 568
    const-string v7, "CsrUpdateManager"

    const-string v8, "LoadCskeysFromXmlFileTask setCskeyList"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setCskeyList(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 602
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 560
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1700(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v8}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1600(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 561
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->parse(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v0

    .end local v0    # "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    goto :goto_1

    .line 571
    :cond_3
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v7

    goto :goto_0

    .line 573
    .end local v0    # "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    .end local v6    # "parser":Lcom/csr/uenergy/ota/model/CsKeyXmlParser;
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v4, :cond_4

    .line 576
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 581
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 582
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 577
    :catch_1
    move-exception v3

    .line 578
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 583
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 585
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    if-eqz v4, :cond_5

    .line 586
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 590
    :cond_5
    :goto_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 591
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 587
    :catch_3
    move-exception v3

    .line 588
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 592
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 594
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    if-eqz v4, :cond_6

    .line 595
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 599
    :cond_6
    :goto_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 596
    :catch_5
    move-exception v3

    .line 597
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 592
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "parser":Lcom/csr/uenergy/ota/model/CsKeyXmlParser;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 583
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 573
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 541
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 607
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setNextReadCsBlockState()V

    .line 609
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readNextCsBlock()V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v0, "CsrUpdateManager"

    const-string v1, "Read CSKey XML file error!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 541
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
