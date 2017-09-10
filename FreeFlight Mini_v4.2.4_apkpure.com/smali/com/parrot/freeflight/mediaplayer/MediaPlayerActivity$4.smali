.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticationNeeded(ILandroid/content/Intent;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 281
    return-void
.end method

.method public uploadFailed(II)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "errorType"    # I

    .prologue
    const v7, 0x7f08065c

    const v6, 0x7f0803a8

    const v5, 0x7f080111

    const/4 v4, 0x0

    .line 208
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    .line 210
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->dismiss()V

    .line 212
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$602(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    .line 215
    :cond_0
    const/4 v1, 0x1

    .line 216
    .local v1, "displayDialog":Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080673

    .line 217
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p2, :pswitch_data_0

    .line 255
    :pswitch_0
    const/4 v1, 0x0

    .line 259
    :goto_0
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 264
    return-void

    .line 221
    :pswitch_1
    const v2, 0x7f080679

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 225
    :pswitch_2
    const v2, 0x7f080672

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 229
    :pswitch_3
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    const v2, 0x7f080676

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$800(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 234
    :pswitch_4
    const v2, 0x7f080678

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 238
    :pswitch_5
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    const v2, 0x7f080677

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 240
    const v2, 0x7f080590

    iget-object v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$800(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 243
    :pswitch_6
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    const v2, 0x7f080674

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 245
    const v2, 0x7f080647

    iget-object v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$800(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 248
    :pswitch_7
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    const v2, 0x7f080675

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 250
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$800(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public uploadProgress(IF)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "progress"    # F

    .prologue
    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$602(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->setProgress(F)V

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->setCancelable(Z)V

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-virtual {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->setProgress(F)V

    .line 276
    return-void
.end method

.method public uploadStarted(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 180
    return-void
.end method

.method public uploadSucceeded(ILcom/parrot/freeflight/core/academy/MediaInfos;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "infos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    .line 186
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->setProgress(F)V

    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->dismiss()V

    .line 189
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$602(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$700(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$700(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 195
    .local v0, "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/parrot/freeflight/core/academy/MediaInfos;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-boolean v1, p2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    iput-boolean v1, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    .line 203
    .end local v0    # "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 204
    return-void
.end method
