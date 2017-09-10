.class public Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;
.super Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
.source "MyFlightsDetailsGraphicsFragment.java"


# instance fields
.field private mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createScreenshot(Ljava/io/File;)Z
    .locals 10
    .param p1, "screenshotFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    iget-object v5, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getMeasuredHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    iget-object v6, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v7}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v8}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->layout(IIII)V

    .line 40
    iget-object v5, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v5, v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 49
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    const/4 v5, 0x1

    .line 55
    if-eqz v4, :cond_1

    .line 57
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    move-object v3, v4

    .line 64
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return v5

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    if-eqz v3, :cond_2

    .line 57
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 64
    :cond_2
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 55
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    .line 57
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 60
    :cond_3
    :goto_5
    throw v5

    .line 58
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 55
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 52
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    const v1, 0x7f04008b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0f0258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .line 27
    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->mGraphicsView:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->getRunDetails()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->setRunAndRunDetails(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 34
    return-void
.end method
