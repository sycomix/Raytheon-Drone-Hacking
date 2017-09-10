.class public Lcom/parrot/freeflight/academy/ProfileAboutView;
.super Landroid/widget/FrameLayout;
.source "ProfileAboutView.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;


# instance fields
.field private final mAvatarImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAvatarProgress:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBiography:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBiographyContainer:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCrashes:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDrones:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDuration:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFacebook:Landroid/widget/TextView;

.field private mGooglePlus:Landroid/widget/TextView;

.field private final mName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPilotings:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPsn:Landroid/widget/TextView;

.field private final mStatus:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSteam:Landroid/widget/TextView;

.field private mTwitter:Landroid/widget/TextView;

.field private final mWebInfoSection:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWebsite:Landroid/widget/TextView;

.field private mXboxLive:Landroid/widget/TextView;

.field private mYoutube:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0e0006

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const v6, 0x7f040033

    invoke-static {p1, v6, p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    const v6, 0x7f0f0164

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarImage:Landroid/widget/ImageView;

    .line 68
    const v6, 0x7f0f0165

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarProgress:Landroid/view/View;

    .line 70
    const v6, 0x7f0f0183

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "personalInfo":Landroid/view/View;
    const v6, 0x7f0f0184

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mName:Landroid/widget/TextView;

    .line 72
    const v6, 0x7f0f0185

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mStatus:Landroid/widget/TextView;

    .line 73
    const v6, 0x7f0f0187

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiography:Landroid/widget/TextView;

    .line 74
    const v6, 0x7f0f0186

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiographyContainer:Landroid/view/View;

    .line 76
    const v6, 0x7f0f0188

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, "pilotingInfo":Landroid/view/View;
    const v6, 0x7f0f018a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDuration:Landroid/widget/TextView;

    .line 78
    const v6, 0x7f0f018c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mPilotings:Landroid/widget/TextView;

    .line 79
    const v6, 0x7f0f018e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mCrashes:Landroid/widget/TextView;

    .line 80
    const v6, 0x7f0f0190

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDrones:Landroid/widget/TextView;

    .line 83
    const v6, 0x7f0f0191

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    .line 84
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0192

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebsite:Landroid/widget/TextView;

    .line 87
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0193

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mYoutube:Landroid/widget/TextView;

    .line 88
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0194

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mFacebook:Landroid/widget/TextView;

    .line 89
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0195

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mTwitter:Landroid/widget/TextView;

    .line 90
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0196

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mGooglePlus:Landroid/widget/TextView;

    .line 91
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0197

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mPsn:Landroid/widget/TextView;

    .line 92
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0198

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mXboxLive:Landroid/widget/TextView;

    .line 93
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const v7, 0x7f0f0199

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mSteam:Landroid/widget/TextView;

    .line 96
    :cond_0
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    const v6, 0x7f0f0189

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 99
    .local v5, "timeImageView":Landroid/widget/ImageView;
    const v6, 0x7f0f018b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 100
    .local v4, "pilotingsImageView":Landroid/widget/ImageView;
    const v6, 0x7f0f018d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, "crashesImageView":Landroid/widget/ImageView;
    const v6, 0x7f0f018f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .local v1, "dronesImageView":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setDefaultAvatar()V

    .line 109
    return-void
.end method

.method private setAvatar(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 226
    .local v0, "bitmapSize":I
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 227
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 228
    return-void
.end method

.method private setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 3
    .param p1, "roundedBitmapDrawable"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 237
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 238
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void
.end method

.method private setDefaultAvatar()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 217
    return-void
.end method

.method private setTextAndRemoveIfEmpty(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V
    .locals 2
    .param p1, "roundedBitmapDrawable"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestDone"    # Z

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    if-eqz p1, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 129
    :cond_1
    return-void
.end method

.method public updateOtherUserInfos(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pilot"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mName:Landroid/widget/TextView;

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updatePilotInfos(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    .line 142
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v0

    .line 144
    .local v0, "pilotDetails":Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiographyContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiography:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebInfoSection:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mWebsite:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mYoutube:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mFacebook:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mTwitter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mGooglePlus:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mPsn:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mXboxLive:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mSteam:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v0    # "pilotDetails":Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    :cond_1
    return-void
.end method

.method public updatePilotInfos(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V
    .locals 18
    .param p1, "pilot"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v10

    .line 185
    .local v10, "stats":Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 187
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {v10}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v14

    double-to-long v12, v14

    .line 188
    .local v12, "timeTotal":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v14

    long-to-int v5, v14

    .line 189
    .local v5, "hours":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v14

    long-to-int v11, v14

    rem-int/lit8 v6, v11, 0x3c

    .line 190
    .local v6, "minutes":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v14

    long-to-int v11, v14

    rem-int/lit8 v9, v11, 0x3c

    .line 194
    .local v9, "seconds":I
    if-lez v5, :cond_1

    .line 195
    const v11, 0x7f08008d

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "durationString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v8

    .line 203
    .local v8, "runs":I
    invoke-virtual {v10}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v2

    .line 204
    .local v2, "crashes":I
    invoke-virtual {v10}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v3

    .line 206
    .local v3, "drones":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mPilotings:Landroid/widget/TextView;

    const v14, 0x7f100002

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v8, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mCrashes:Landroid/widget/TextView;

    const/high16 v14, 0x7f100000

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v2, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDrones:Landroid/widget/TextView;

    const v14, 0x7f100001

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v3, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 196
    .end local v2    # "crashes":I
    .end local v3    # "drones":I
    .end local v4    # "durationString":Ljava/lang/String;
    .end local v8    # "runs":I
    :cond_1
    if-lez v6, :cond_2

    .line 197
    const v11, 0x7f08008e

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "durationString":Ljava/lang/String;
    goto :goto_1

    .line 199
    .end local v4    # "durationString":Ljava/lang/String;
    :cond_2
    const v11, 0x7f08008f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "durationString":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public updateUserInfos(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0806ac

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiographyContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiography:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
