.class public Lcom/parrot/freeflight/academy/ProfileEditPage1View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage1View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;
    }
.end annotation


# static fields
.field private static final RESULT_LOAD_IMAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProfileEditPage1View"


# instance fields
.field private final mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAvatarImage:Landroid/widget/ImageView;

.field private final mAvatarProgress:Landroid/widget/ProgressBar;

.field private final mBiography:Landroid/widget/EditText;

.field private final mController:Lcom/parrot/freeflight/academy/ProfileEditController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstName:Landroid/widget/EditText;

.field private final mLastName:Landroid/widget/EditText;

.field private final mStatus:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/academy/ProfileEditController;)V
    .locals 5
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Lcom/parrot/freeflight/academy/ProfileEditController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .line 55
    iput-object p2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    .line 57
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    const v3, 0x7f040035

    invoke-static {v2, v3, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v2, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 61
    const v2, 0x7f0f0166

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mFirstName:Landroid/widget/EditText;

    .line 62
    const v2, 0x7f0f0167

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mLastName:Landroid/widget/EditText;

    .line 63
    const v2, 0x7f0f0168

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mStatus:Landroid/widget/EditText;

    .line 64
    const v2, 0x7f0f0169

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mBiography:Landroid/widget/EditText;

    .line 65
    const v2, 0x7f0f0165

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mAvatarProgress:Landroid/widget/ProgressBar;

    .line 66
    const v2, 0x7f0f0164

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mAvatarImage:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mAvatarImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/parrot/freeflight/academy/ProfileEditPage1View$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage1View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/ProfileEditController;->getAvatar()Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 76
    .local v0, "avatar":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    if-eqz v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mAvatarProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    invoke-direct {p0, v0, v4}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setDefaultAvatar()V

    .line 81
    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;

    invoke-direct {v1, p0, v4}, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage1View;I)V

    .line 82
    .local v1, "listener":Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditPage1View;)Lcom/parrot/freeflight/academy/ProfileEditActivity;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/ProfileEditPage1View;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage1View;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->onAvatarRequestResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private onAvatarRequestResponse(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mAvatarProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .end local p1    # "result":Ljava/lang/Object;
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 174
    :cond_0
    return-void
.end method

.method private setAvatar(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "keep"    # Z

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 150
    .local v0, "bitmapSize":I
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 152
    return-void
.end method

.method private setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V
    .locals 3
    .param p1, "roundedBitmapDrawable"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keep"    # Z

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 161
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 162
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mAvatarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    if-eqz p2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/academy/ProfileEditController;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 167
    :cond_0
    return-void
.end method

.method private setDefaultAvatar()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setAvatar(Landroid/graphics/Bitmap;Z)V

    .line 127
    return-void
.end method

.method private setNewAvatar(Ljava/lang/String;)V
    .locals 5
    .param p1, "picturePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    .local v1, "profileImageBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 135
    invoke-static {v1, p1}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setAvatar(Landroid/graphics/Bitmap;Z)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    const v3, 0x7f0801a0

    const v4, 0x7f080481

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/academy/ProfileEditController;->showErrorDialog(II)V

    .line 139
    const-string v2, "ProfileEditPage1View"

    const-string v3, "Error, can\'t set photo as avatar"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mStatus:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mBiography:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 243
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 178
    if-ne p1, v4, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 179
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 180
    .local v1, "selectedImage":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 182
    .local v2, "filePathColumn":[Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 187
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "picturePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/academy/ProfileEditController;->setAvatarPicturePath(Ljava/lang/String;)V

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    if-eqz v8, :cond_0

    .line 192
    invoke-direct {p0, v8}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->setNewAvatar(Ljava/lang/String;)V

    .line 196
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "picturePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mFirstName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mLastName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mStatus:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mBiography:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mStatus:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mBiography:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    if-eqz p1, :cond_3

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mLastName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setLastName(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mFirstName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setFirstName(Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mStatus:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mStatus:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setStatus(Ljava/lang/String;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mBiography:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->mBiography:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setBiography(Ljava/lang/String;)V

    .line 112
    :cond_3
    return-void
.end method
