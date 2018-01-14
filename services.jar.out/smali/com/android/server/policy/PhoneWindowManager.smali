.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$1;,
        Lcom/android/server/policy/PhoneWindowManager$2;,
        Lcom/android/server/policy/PhoneWindowManager$3;,
        Lcom/android/server/policy/PhoneWindowManager$4;,
        Lcom/android/server/policy/PhoneWindowManager$5;,
        Lcom/android/server/policy/PhoneWindowManager$6;,
        Lcom/android/server/policy/PhoneWindowManager$7;,
        Lcom/android/server/policy/PhoneWindowManager$8;,
        Lcom/android/server/policy/PhoneWindowManager$9;,
        Lcom/android/server/policy/PhoneWindowManager$10;,
        Lcom/android/server/policy/PhoneWindowManager$11;,
        Lcom/android/server/policy/PhoneWindowManager$12;,
        Lcom/android/server/policy/PhoneWindowManager$13;,
        Lcom/android/server/policy/PhoneWindowManager$14;,
        Lcom/android/server/policy/PhoneWindowManager$15;,
        Lcom/android/server/policy/PhoneWindowManager$16;,
        Lcom/android/server/policy/PhoneWindowManager$17;,
        Lcom/android/server/policy/PhoneWindowManager$18;,
        Lcom/android/server/policy/PhoneWindowManager$19;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_WAKEUP:Z = false

.field private static final DEPRECATED_THIRD_PARTY_KEYGUARD_PERMISSION:Ljava/lang/String; = "android.permission.THIRD_PARTY_KEYGUARD"

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_IN_APP_SEARCH:I = 0x5

.field private static final KEY_ACTION_LAST_APP:I = 0x8

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x6

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_SEARCH:I = 0x3

.field private static final KEY_ACTION_SLEEP:I = 0x7

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x4

.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field private static final KEY_MASK_VOLUME:I = 0x40

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_CAMERA_LONG_PRESS:I = 0x11

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK:I = 0x10

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static currentPackageName:Ljava/lang/String;

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private haveEnableGesture:Z

.field private haveEnableRecentsGesture:Z

.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppSwitchLongPressed:Z

.field mAppSwitchWakeScreen:Z

.field mAppsThatDismissKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mAssistWakeScreen:Z

.field mAwake:Z

.field mBackKillTimeout:I

.field mBackLongPress:Ljava/lang/Runnable;

.field mBackWakeScreen:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMsgDialog:Lorg/screwd/internal/BootDexoptDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field mCameraLaunch:Z

.field mCameraLensCoverState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mCameraSleepOnRelease:Z

.field mCameraWakeScreen:Z

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private mClearedBecauseOfForceShow:Z

.field mClockTickVibePattern:[J

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mContextClickVibePattern:[J

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field private mDUReceiver:Lcom/android/internal/utils/du/DUSystemReceiver;

.field private mDeferBindKeyguard:Z

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDevForceNavbar:Z

.field mDeviceHardwareKeys:I

.field private mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field private mDisplayRotation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field private mEdgeGestureActivationListener:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

.field private mEdgeGestureManager:Landroid/service/gesture/EdgeGestureManager;

.field private mEdgeListenerActivated:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceImmersiveBottom:I

.field mForceImmersiveLeft:I

.field mForceImmersiveRight:I

.field mForceImmersiveTop:I

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasHwKeysEnabled:Z

.field mHasNavigationBar:Z

.field private mHasPermanentMenuKey:Z

.field mHasRemovableLid:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideLockScreen:Z

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHomeWakeScreen:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mIsFocusPressed:Z

.field mIsLongPress:Z

.field private mIsTorchActive:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field mKeyguardPanel:Landroid/view/WindowManagerPolicy$WindowState;

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardSecure:Z

.field mKeyguardSecureIncludingHidden:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field private mLastEdgePositions:I

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnAssistBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMenuPressed:Z

.field mMenuWakeScreen:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavbarVisible:Z

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeight:I

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarHeightLandscape:I

.field mNavigationBarLeftInLandscape:Z

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidth:I

.field mNavigationBarWidthForRotation:[I

.field private mOPGestures:Lcom/android/server/policy/OPGesturesListener;

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field mPieState:Z

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field private mPressOnAppSwitchBehavior:I

.field private mPressOnAssistBehavior:I

.field private mPressOnMenuBehavior:I

.field mRecentAppsHeldModifiers:I

.field mRecentsVisible:Z

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mRingHomeBehavior:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenrecordChordEnabled:Z

.field private mScreenrecordChordVolumeUpKeyConsumed:Z

.field mScreenrecordConnection:Landroid/content/ServiceConnection;

.field final mScreenrecordLock:Ljava/lang/Object;

.field private final mScreenrecordRunnable:Ljava/lang/Runnable;

.field final mScreenrecordTimeout:Ljava/lang/Runnable;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecureDismissingKeyguard:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field private mShowKeyguardOnLeftSwipe:Z

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field private mTopWindowIsKeyguard:Z

.field private mTorchEnabled:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationAngles:I

.field mUserRotationMode:I

.field private mUsingEdgeGestureServiceForGestures:Z

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceContentBottom:I

.field mVoiceContentLeft:I

.field mVoiceContentRight:I

.field mVoiceContentTop:I

.field mVolBtnMusicControls:Z

.field mVolumeAnswer:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field mVolumeWakeScreen:Z

.field mVolumeWakeTriggered:Z

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field private mWasTorchActive:Z

.field mWifiDisplayConnected:Z

.field mWifiDisplayCustomRotation:I

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowKeyguardOnLeftSwipe:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeListenerActivated:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 1
    .param p1, "checkOnly"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->unpinActivity(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenrecord()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "acquire"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .locals 1
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 266
    const/4 v1, 0x4

    .line 265
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 267
    const/16 v1, 0xd

    .line 265
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 306
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 307
    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    const/16 v2, 0x40

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 309
    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    const/16 v2, 0x41

    .line 308
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 311
    const-string/jumbo v1, "android.intent.category.APP_CONTACTS"

    const/16 v2, 0xcf

    .line 310
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 313
    const-string/jumbo v1, "android.intent.category.APP_CALENDAR"

    const/16 v2, 0xd0

    .line 312
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 315
    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    const/16 v2, 0xd1

    .line 314
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 317
    const-string/jumbo v1, "android.intent.category.APP_CALCULATOR"

    const/16 v2, 0xd2

    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 589
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 591
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 592
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 593
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 594
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 595
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 596
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 3449
    const/16 v0, 0x7d3

    .line 3450
    const/16 v1, 0x7da

    .line 3448
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 343
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 375
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 378
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 380
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 381
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 383
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 384
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 385
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 386
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    .line 387
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 388
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 396
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 403
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 414
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 415
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 433
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 434
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 444
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 460
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 462
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 463
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 464
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    .line 468
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 485
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 486
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 487
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 488
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 513
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 577
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 579
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 582
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 586
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 600
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    .line 610
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDevForceNavbar:Z

    .line 614
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    .line 617
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPieState:Z

    .line 623
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 664
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 665
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 666
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 667
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 668
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 669
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 670
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 697
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 698
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 699
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 700
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 702
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    .line 703
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    .line 704
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    .line 705
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    .line 755
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 756
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    .line 763
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 762
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 766
    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v7}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    .line 765
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 785
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 786
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    .line 865
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDUReceiver:Lcom/android/internal/utils/du/DUSystemReceiver;

    .line 884
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1079
    new-instance v0, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 1081
    new-instance v0, Lcom/android/server/policy/BarController;

    const-string/jumbo v1, "NavigationBar"

    .line 1082
    const/high16 v2, 0x8000000

    .line 1083
    const/high16 v3, 0x20000000

    .line 1084
    const/high16 v4, -0x80000000

    .line 1085
    const/4 v5, 0x2

    .line 1086
    const/high16 v6, 0x8000000

    .line 1081
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 1095
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1094
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureActivationListener:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    .line 1122
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureManager:Landroid/service/gesture/EdgeGestureManager;

    .line 1123
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastEdgePositions:I

    .line 1124
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeListenerActivated:Z

    .line 1125
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    .line 1610
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1621
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1633
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    .line 1651
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 1790
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 4326
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 4394
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 4393
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 5905
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 5906
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordLock:Ljava/lang/Object;

    .line 5907
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5908
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 5910
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 5921
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordTimeout:Ljava/lang/Runnable;

    .line 6750
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 6771
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 6786
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 6811
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 6850
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 7536
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/screwd/internal/BootDexoptDialog;

    .line 7612
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 174
    return-void
.end method

.method private applyForceImmersiveMode(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "pfl"    # I
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4853
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 4854
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveTop:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 4856
    :cond_0
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 4857
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_2

    .line 4858
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveBottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 4852
    :cond_1
    :goto_0
    return-void

    .line 4860
    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveRight:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private applyLidSwitchState()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 7678
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    .line 7679
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v3, :cond_3

    .line 7680
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 7681
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 7683
    :try_start_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-interface {v0, v3}, Landroid/service/dreams/IDreamManager;->setLidState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7688
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v3, :cond_2

    .line 7689
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7690
    const/high16 v5, 0x200000

    .line 7689
    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 7693
    return-void

    .line 7696
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 7697
    .local v2, "telephonyService":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_4

    .line 7698
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    .line 7697
    :goto_1
    if-nez v3, :cond_2

    .line 7699
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 7700
    const/4 v5, 0x3

    .line 7699
    invoke-virtual {v3, v6, v7, v5, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 7706
    .end local v2    # "telephonyService":Landroid/telecom/TelecomManager;
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7707
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 7677
    .end local v0    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :cond_3
    return-void

    .restart local v0    # "dreamManager":Landroid/service/dreams/IDreamManager;
    .restart local v2    # "telephonyService":Landroid/telecom/TelecomManager;
    :cond_4
    move v3, v4

    .line 7697
    goto :goto_1

    .line 7706
    .end local v2    # "telephonyService":Landroid/telecom/TelecomManager;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 7684
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "d"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 4866
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v0, :cond_0

    .line 4867
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 4868
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 4871
    :cond_0
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_4

    .line 4874
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_5

    .line 4875
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4876
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4877
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4878
    :cond_3
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 4865
    :cond_4
    :goto_0
    return-void

    .line 4880
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4881
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4882
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4883
    :cond_8
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8209
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v1, :cond_0

    .line 8210
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8209
    :cond_0
    :goto_0
    return v0

    .line 8210
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    .prologue
    .line 3416
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 3417
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 3419
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    :cond_0
    :goto_0
    return-void

    .line 3420
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2340
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2341
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2340
    :cond_0
    :goto_0
    return v0

    .line 2341
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    .line 4890
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 4892
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 4893
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    .line 4894
    .local v2, "notFocusableForIm":Z
    if-eqz v2, :cond_2

    :goto_2
    return v3

    .line 4890
    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "notFocusable":Z
    goto :goto_0

    .line 4892
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "altFocusableIm":Z
    goto :goto_1

    .line 4894
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1401
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWasTorchActive:Z

    if-eqz v0, :cond_2

    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWasTorchActive:Z

    goto :goto_0

    .line 1406
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0
.end method

.method private cancelPendingScreenrecordChordAction()V
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1606
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1602
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4208
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 4209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4212
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 4213
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4207
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 4215
    :catch_0
    move-exception v0

    .line 4216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when cancelling recent apps preload"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4218
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .prologue
    .line 8187
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 8188
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 8189
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 8190
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 8186
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2595
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2597
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2598
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2594
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6647
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6648
    return-void

    .line 6650
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 6651
    .local v7, "keyCode":I
    const/16 v3, 0x1005

    .line 6653
    .local v3, "flags":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6654
    .local v4, "pkgName":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 6646
    :cond_1
    :goto_0
    return-void

    .line 6657
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6658
    const-string/jumbo v5, "WindowManager"

    .line 6657
    const/4 v1, 0x1

    .line 6658
    const/high16 v2, -0x80000000

    .line 6657
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6659
    :catch_0
    move-exception v6

    .line 6660
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6665
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6666
    const-string/jumbo v5, "WindowManager"

    .line 6665
    const/4 v1, -0x1

    .line 6666
    const/high16 v2, -0x80000000

    .line 6665
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6667
    :catch_1
    move-exception v6

    .line 6668
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6673
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6674
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6676
    const-string/jumbo v5, "WindowManager"

    .line 6675
    const/16 v1, 0x65

    .line 6676
    const/high16 v2, -0x80000000

    .line 6674
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 6678
    :catch_2
    move-exception v6

    .line 6679
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6654
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method private enablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2570
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v1, :cond_1

    .line 2571
    new-instance v1, Lcom/android/internal/widget/PointerLocationView;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2572
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 2573
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2576
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2577
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2581
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2582
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2583
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2586
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2587
    const-string/jumbo v1, "PointerLocation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2588
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2589
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2590
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2569
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method private enableSwipeRecentsFingerGesture(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2145
    if-eqz p1, :cond_2

    .line 2146
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    if-eqz v0, :cond_0

    return-void

    .line 2147
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    .line 2148
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    iput-boolean v2, v0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    .line 2149
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-nez v0, :cond_1

    .line 2150
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2144
    :cond_1
    :goto_0
    return-void

    .line 2152
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    if-nez v0, :cond_3

    return-void

    .line 2153
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    .line 2154
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    iput-boolean v1, v0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    .line 2155
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-nez v0, :cond_1

    .line 2156
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    goto :goto_0
.end method

.method private enableSwipeThreeFingerGesture(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2129
    if-eqz p1, :cond_2

    .line 2130
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-eqz v0, :cond_0

    return-void

    .line 2131
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 2132
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    iput-boolean v2, v0, Lcom/android/server/policy/OPGesturesListener;->mThreeSwipe:Z

    .line 2133
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    if-nez v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2128
    :cond_1
    :goto_0
    return-void

    .line 2136
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-nez v0, :cond_3

    return-void

    .line 2137
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 2138
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    iput-boolean v1, v0, Lcom/android/server/policy/OPGesturesListener;->mThreeSwipe:Z

    .line 2139
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableRecentsGesture:Z

    if-nez v0, :cond_1

    .line 2140
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    goto :goto_0
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    .prologue
    .line 6967
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6968
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 6969
    return-void

    .line 6972
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 6973
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    .line 6974
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6976
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 6981
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 6982
    const-wide/16 v2, 0x3e8

    .line 6981
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 6966
    return-void

    .line 6967
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishPowerKeyPress()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1391
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1392
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1393
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1390
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 7053
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7056
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 7060
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 7068
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v3, :cond_3

    .line 7069
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v3, :cond_3

    .line 7074
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 7075
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 7076
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7080
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_4

    .line 7081
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7082
    const/4 v0, 0x1

    .local v0, "enableScreen":Z
    :goto_0
    monitor-exit v4

    .line 7088
    if-eqz v1, :cond_1

    .line 7089
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 7092
    :cond_1
    if-eqz v0, :cond_2

    .line 7094
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7099
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManager;->toggleOrientationListener(Z)V

    .line 7052
    return-void

    .line 7053
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_3
    monitor-exit v4

    .line 7070
    return-void

    .line 7084
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enableScreen":Z
    goto :goto_0

    .line 7060
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 7095
    .restart local v0    # "enableScreen":Z
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catch_0
    move-exception v2

    .local v2, "unhandled":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    .prologue
    .line 7041
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7042
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 7043
    return-void

    .line 7046
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 7049
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 7040
    return-void

    .line 7041
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 3437
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3436
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3438
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 3439
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_0
    return-object v0
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1345
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 1346
    .local v4, "ids":[Ljava/lang/String;
    array-length v5, v4

    .line 1347
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1348
    aget-object v3, v4, v2

    .line 1349
    .local v3, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1350
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1351
    .local v1, "flashAvailable":Ljava/lang/Boolean;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1352
    .local v6, "lensFacing":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1353
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1354
    return-object v3

    .line 1347
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1357
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "flashAvailable":Ljava/lang/Boolean;
    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    return-object v9
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 3428
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3427
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1705
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v2, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1707
    const-string/jumbo v3, "hdmi_control"

    .line 1706
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1708
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    .line 1709
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    .line 1710
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    .line 1712
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1714
    .end local v1    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v2
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 7462
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 7463
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 7464
    return-object v3

    .line 7466
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 7467
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 7468
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 7467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7470
    :cond_1
    return-object v2
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    .line 1489
    const/4 v0, 0x3

    return v0

    .line 1491
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    .line 1492
    const/4 v0, 0x2

    return v0

    .line 1494
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    const/4 v0, 0x3

    return v0

    .line 1557
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    long-to-float v0, v0

    .line 1596
    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 4187
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private handleHideBootMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7103
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7104
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    .line 7105
    return-void

    :cond_0
    monitor-exit v0

    .line 7109
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/screwd/internal/BootDexoptDialog;

    if-eqz v0, :cond_1

    .line 7111
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/screwd/internal/BootDexoptDialog;

    invoke-virtual {v0}, Lorg/screwd/internal/BootDexoptDialog;->dismiss()V

    .line 7112
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/screwd/internal/BootDexoptDialog;

    .line 7102
    :cond_1
    return-void

    .line 7103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleShortPressOnHome()V
    .locals 2

    .prologue
    .line 1686
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1690
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1692
    return-void

    .line 1696
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1684
    return-void
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1561
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4258
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4260
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4261
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 4262
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4257
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 4264
    :catch_0
    move-exception v0

    .line 4265
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when closing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4267
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private immersiveModeImplementsPie()Z
    .locals 1

    .prologue
    .line 5387
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPieState:Z

    return v0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v6, 0x0

    .line 4111
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 4112
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 4113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    .line 4115
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 4116
    const/4 v1, 0x1

    return v1

    .line 4119
    .end local v2    # "delayMillis":J
    :cond_0
    return v6
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    .line 1250
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1251
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1255
    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v8, :cond_1

    .line 1256
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1261
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 1262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v9

    .line 1261
    invoke-virtual {v8, p2, v10, v11, v9}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    move-result v6

    .line 1263
    .local v6, "panic":Z
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/view/WindowManagerPolicyControl;->isImmersiveFiltersActive()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1268
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v8, :cond_8

    .line 1277
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v7

    .line 1278
    .local v7, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v3, 0x0

    .line 1279
    .local v3, "hungUp":Z
    if-eqz v7, :cond_4

    .line 1280
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1283
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1294
    .end local v3    # "hungUp":Z
    :cond_4
    :goto_2
    const-class v8, Lcom/android/server/GestureLauncherService;

    .line 1293
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GestureLauncherService;

    .line 1295
    .local v1, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v2, 0x0

    .line 1296
    .local v2, "gesturedServiceIntercepted":Z
    if-eqz v1, :cond_5

    .line 1297
    invoke-virtual {v1, p1, p2}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)Z

    move-result v2

    .line 1302
    .end local v2    # "gesturedServiceIntercepted":Z
    :cond_5
    if-nez v3, :cond_a

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v8, :cond_a

    if-nez v2, :cond_a

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    :goto_3
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1303
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v8, :cond_6

    .line 1304
    if-eqz p2, :cond_b

    .line 1307
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1308
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1309
    .local v5, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1310
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1311
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    .line 1310
    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1248
    .end local v5    # "msg":Landroid/os/Message;
    :cond_6
    :goto_4
    return-void

    .line 1264
    .end local v1    # "gestureService":Lcom/android/server/GestureLauncherService;
    .end local v7    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1269
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    .line 1270
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1271
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTime:J

    .line 1272
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 1273
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenrecordChord()V

    goto :goto_1

    .line 1284
    .restart local v3    # "hungUp":Z
    .restart local v7    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_9
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    .line 1286
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    .line 1284
    if-eqz v8, :cond_4

    if-eqz p2, :cond_4

    .line 1289
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    .local v3, "hungUp":Z
    goto :goto_2

    .line 1302
    .end local v3    # "hungUp":Z
    .restart local v1    # "gestureService":Lcom/android/server/GestureLauncherService;
    :cond_a
    const/4 v8, 0x1

    goto :goto_3

    .line 1314
    :cond_b
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-nez v8, :cond_c

    .line 1315
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1317
    :cond_c
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsTorchActive:Z

    if-eqz v8, :cond_d

    .line 1319
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getCameraId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :goto_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsTorchActive:Z

    .line 1324
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWasTorchActive:Z

    goto :goto_4

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWasTorchActive:Z

    goto :goto_5

    .line 1325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-nez v8, :cond_e

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v8, :cond_f

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1326
    :cond_e
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1327
    .restart local v5    # "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1328
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1329
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    .line 1328
    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1330
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto/16 :goto_4

    .line 1332
    .end local v5    # "msg":Landroid/os/Message;
    :cond_f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v4

    .line 1334
    .local v4, "maxCount":I
    const/4 v8, 0x1

    if-gt v4, v8, :cond_10

    .line 1335
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto/16 :goto_4

    .line 1337
    :cond_10
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto/16 :goto_4
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1361
    if-nez p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1362
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1363
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1364
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1366
    if-nez v2, :cond_3

    .line 1368
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1370
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    .line 1371
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 1372
    .local v0, "eventTime":J
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v7, v3, :cond_2

    .line 1375
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1376
    if-eqz p2, :cond_0

    move v5, v6

    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1375
    const/16 v10, 0xd

    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1377
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1378
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1379
    return-void

    .line 1361
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_0

    .line 1383
    .end local v2    # "handled":Z
    .restart local v0    # "eventTime":J
    .restart local v3    # "maxCount":I
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1387
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1360
    return-void
.end method

.method private interceptScreenrecordChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1580
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordEnabled:Z

    if-eqz v2, :cond_0

    .line 1581
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1580
    if-eqz v2, :cond_0

    .line 1581
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1580
    if-eqz v2, :cond_0

    .line 1581
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1583
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1584
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1585
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordVolumeUpKeyConsumed:Z

    .line 1586
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1588
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1565
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    .line 1566
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1565
    if-eqz v2, :cond_0

    .line 1566
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1565
    if-eqz v2, :cond_0

    .line 1566
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1568
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1569
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1571
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1572
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1574
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 7419
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2825
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7917
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7918
    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    .line 7917
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2814
    packed-switch p1, :pswitch_data_0

    .line 2820
    return v1

    .line 2816
    :pswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2818
    :pswitch_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 3
    .param p1, "vis"    # I

    .prologue
    const/4 v1, 0x0

    .line 8195
    const/16 v0, 0x1800

    .line 8196
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 8197
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 8198
    and-int/lit16 v2, p1, 0x1800

    if-eqz v2, :cond_0

    .line 8199
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    .line 8196
    :cond_0
    return v1
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7138
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    return v0

    .line 7139
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 7415
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMusicActive()Z
    .locals 3

    .prologue
    .line 5897
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5898
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 5899
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    const/4 v1, 0x0

    return v1

    .line 5902
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    return v1
.end method

.method private isRoundWindow()Z
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isStatusBarKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5778
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 5779
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 5778
    :cond_0
    return v0
.end method

.method private isTheaterModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7912
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7913
    const-string/jumbo v3, "theater_mode_on"

    .line 7912
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 6511
    sparse-switch p0, :sswitch_data_0

    .line 6517
    const/4 v0, 0x1

    return v0

    .line 6515
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 6511
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyEnabled(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 6526
    sparse-switch p1, :sswitch_data_0

    .line 6546
    return v0

    .line 6531
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 6533
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackWakeScreen:Z

    return v0

    .line 6535
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuWakeScreen:Z

    return v0

    .line 6537
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistWakeScreen:Z

    return v0

    .line 6539
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchWakeScreen:Z

    return v0

    .line 6542
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    return v0

    .line 6544
    :sswitch_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    return v0

    .line 6526
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x50 -> :sswitch_5
        0x52 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xbb -> :sswitch_4
        0xdb -> :sswitch_3
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6557
    sparse-switch p1, :sswitch_data_0

    .line 6593
    return v0

    .line 6562
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 6577
    :sswitch_1
    return v1

    .line 6580
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackWakeScreen:Z

    return v0

    .line 6582
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMenuWakeScreen:Z

    return v0

    .line 6584
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAssistWakeScreen:Z

    return v0

    .line 6586
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchWakeScreen:Z

    return v0

    .line 6589
    :sswitch_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    return v0

    .line 6591
    :sswitch_7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    return v0

    .line 6557
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_6
        0x4f -> :sswitch_1
        0x50 -> :sswitch_6
        0x52 -> :sswitch_3
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xbb -> :sswitch_5
        0xdb -> :sswitch_4
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 7
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 4143
    const-string/jumbo v4, "assist"

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4144
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4146
    return-void

    .line 4148
    :cond_0
    const/4 v0, 0x0

    .line 4149
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v4, -0x80000000

    if-le p2, v4, :cond_1

    .line 4150
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4151
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4153
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    .line 4154
    const/4 v5, 0x4

    .line 4153
    if-ne v4, v5, :cond_3

    .line 4156
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 4157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 4156
    invoke-virtual {v4, p1, v5, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 4142
    :cond_2
    :goto_0
    return-void

    .line 4160
    :cond_3
    if-eqz p1, :cond_5

    .line 4161
    if-nez v0, :cond_4

    .line 4162
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 4164
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4166
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 4167
    .local v3, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 4168
    invoke-interface {v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4170
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    .line 4171
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "RemoteException when starting assist"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4173
    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4123
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4124
    const-string/jumbo v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4127
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4128
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4132
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 4133
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 4134
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 4136
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4122
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 4137
    :catch_0
    move-exception v0

    .line 4138
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchCameraAction()V
    .locals 2

    .prologue
    .line 1752
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 1753
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1751
    return-void
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5391
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5392
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5393
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 5394
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 5396
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveBottom:I

    if-le v1, v0, :cond_1

    .line 5397
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveBottom:I

    .line 5399
    :cond_1
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_2

    .line 5400
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    .line 5402
    :cond_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5403
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5404
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_3

    .line 5405
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 5390
    :cond_3
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5413
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5414
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5415
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_0

    .line 5416
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    .line 5412
    :cond_0
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 7897
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7898
    return-void

    .line 7900
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7901
    const-string/jumbo v3, "audio"

    .line 7900
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7902
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7903
    return-void

    .line 7905
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7906
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 7905
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 7907
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 7908
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 7896
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1758
    packed-switch p1, :pswitch_data_0

    .line 1757
    :goto_0
    :pswitch_0
    return-void

    .line 1762
    :pswitch_1
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1765
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 1768
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 1771
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_0

    .line 1774
    :pswitch_5
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1777
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchCameraAction()V

    goto :goto_0

    .line 1780
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 1783
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1}, Lcom/android/internal/util/cm/ActionUtils;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_0

    .line 1758
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private powerLongPress()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1498
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1499
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1500
    .local v0, "behavior":I
    packed-switch v0, :pswitch_data_0

    .line 1497
    .end local v0    # "behavior":I
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1504
    .restart local v0    # "behavior":I
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1505
    invoke-virtual {p0, v7, v5, v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1506
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    .line 1508
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v3

    .line 1509
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1510
    const-string/jumbo v6, "power_menu_lockscreen"

    const/4 v7, -0x2

    .line 1509
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_5

    const/4 v2, 0x1

    .line 1511
    .local v2, "globalActionsOnLockScreen":Z
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_6

    .line 1514
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1508
    .end local v2    # "globalActionsOnLockScreen":Z
    :cond_4
    const/4 v3, 0x0

    .local v3, "locked":Z
    goto :goto_1

    .line 1509
    .end local v3    # "locked":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "globalActionsOnLockScreen":Z
    goto :goto_2

    .line 1512
    :cond_6
    const/4 v0, 0x0

    .line 1511
    goto :goto_0

    .line 1519
    .end local v2    # "globalActionsOnLockScreen":Z
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1520
    invoke-virtual {p0, v7, v5, v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1521
    const-string/jumbo v6, "globalactions"

    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1522
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v7, 0x2

    if-ne v0, v7, :cond_7

    :goto_3
    invoke-interface {v6, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_3

    .line 1525
    .end local v0    # "behavior":I
    :cond_8
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1527
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getCameraId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    :goto_4
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWasTorchActive:Z

    .line 1531
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsTorchActive:Z

    .line 1532
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_0

    .line 1528
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_4

    .line 1500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    .prologue
    const/4 v3, 0x0

    .line 1450
    packed-switch p4, :pswitch_data_0

    .line 1449
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1454
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1459
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1460
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode off."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1462
    const-string/jumbo v1, "theater_mode_on"

    .line 1461
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1463
    if-nez p3, :cond_0

    .line 1464
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    .line 1467
    :cond_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1469
    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x1

    .line 1468
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1471
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1473
    const/4 v1, 0x4

    .line 1472
    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1478
    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Starting brightness boost."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    if-nez p3, :cond_3

    .line 1480
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 1413
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    .line 1419
    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 1420
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    .line 1412
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1414
    :cond_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void

    .line 1421
    :cond_3
    const/4 v0, 0x3

    if-ne p4, v0, :cond_4

    .line 1422
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1423
    :cond_4
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_1

    .line 1424
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1428
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1432
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1437
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    .line 1443
    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_0

    .line 1424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4196
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4197
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 4198
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4193
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 4200
    :catch_0
    move-exception v0

    .line 4201
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4203
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2809
    return-void
.end method

.method private readRotation(I)I
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 2604
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2605
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    .line 2618
    .end local v1    # "rotation":I
    :goto_0
    const/4 v2, -0x1

    return v2

    .line 2607
    .restart local v1    # "rotation":I
    :sswitch_0
    const/4 v2, 0x0

    return v2

    .line 2609
    :sswitch_1
    const/4 v2, 0x1

    return v2

    .line 2611
    :sswitch_2
    const/4 v2, 0x2

    return v2

    .line 2613
    :sswitch_3
    const/4 v2, 0x3

    return v2

    .line 2615
    .end local v1    # "rotation":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 2605
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 6826
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6827
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 6829
    return-void

    .line 6831
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 6832
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v0

    .line 6833
    .local v0, "nb":Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_5

    .line 6835
    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v2, :cond_2

    monitor-exit v3

    .line 6837
    return-void

    .line 6839
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 6840
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->immersiveModeImplementsPie()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6842
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 6843
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v3

    .line 6825
    return-void

    .line 6841
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6826
    .end local v0    # "nb":Z
    .end local v1    # "sb":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private scheduleLongPressKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 9
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I

    .prologue
    .line 6493
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 6494
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v8, 0x0

    move v7, p2

    .line 6493
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 6496
    .local v1, "event":Landroid/view/KeyEvent;
    const/16 v2, 0x1b

    if-ne p2, v2, :cond_0

    .line 6497
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6501
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6502
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6492
    return-void

    .line 6499
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private setKeyguardOccludedLw(Z)Z
    .locals 5
    .param p1, "isOccluded"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 5756
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5757
    .local v0, "wasOccluded":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 5765
    :cond_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 5766
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5767
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 5768
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5769
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5770
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5771
    return v4

    .line 5758
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5759
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 5760
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5761
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5762
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5763
    return v4

    .line 5774
    :cond_2
    return v2
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6624
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_0

    .line 6625
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 6626
    return v3

    .line 6631
    :cond_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 6634
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDozing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 6643
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 6635
    :cond_2
    return v3

    .line 6637
    :catch_0
    move-exception v1

    .line 6638
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when checking if dreaming"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2564
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 2565
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v1, :cond_0

    .line 2566
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "fl"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4482
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_0

    const v2, 0x2000400

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4244
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4246
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4247
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 4248
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4243
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 4250
    :catch_0
    move-exception v0

    .line 4251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4253
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private sleepPress(J)V
    .locals 2
    .param p1, "eventTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 1537
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-ne v0, v1, :cond_0

    .line 1538
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1536
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 1543
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    .line 1542
    :goto_0
    return-void

    .line 1546
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1548
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1547
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 4179
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4180
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4178
    :goto_0
    return-void

    .line 4182
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private takeScreenrecord()V
    .locals 8

    .prologue
    .line 5989
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5990
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 5991
    return-void

    .line 5993
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 5994
    const-string/jumbo v5, "com.android.systemui.omni.screenrecord.TakeScreenrecordService"

    .line 5993
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5995
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5996
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5997
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$26;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$26;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 6027
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6028
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 6027
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6029
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 6032
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordTimeout:Ljava/lang/Runnable;

    const-wide/32 v6, 0x1c61a0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 5988
    return-void

    .line 5989
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 5934
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5935
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 5936
    return-void

    .line 5938
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 5939
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 5938
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5940
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5941
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5942
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$25;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$25;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 5979
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5980
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 5979
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5981
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5982
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 5933
    return-void

    .line 5934
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private toggleOrientationListener(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 6868
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6869
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 6871
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleOrientationListener(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6867
    :cond_0
    :goto_0
    return-void

    .line 6872
    :catch_0
    move-exception v0

    .line 6873
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when controlling orientation sensor"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6875
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4224
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4227
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 4228
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4223
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 4230
    :catch_0
    move-exception v0

    .line 4231
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4233
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1740
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1741
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1742
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 1743
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 1744
    const/16 v12, 0x8

    const/16 v13, 0x101

    move-wide v4, v2

    move/from16 v7, p1

    .line 1742
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1745
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1747
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1748
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1739
    return-void
.end method

.method private unpinActivity(Z)Z
    .locals 2
    .param p1, "checkOnly"    # Z

    .prologue
    .line 4026
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4028
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4029
    if-nez p1, :cond_0

    .line 4030
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 4034
    :catch_0
    move-exception v0

    .line 4038
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 7644
    if-eqz p1, :cond_1

    .line 7645
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 7646
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "Dream"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 7643
    :cond_0
    :goto_0
    return-void

    .line 7649
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 7650
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 7651
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateEdgeGestureListenerState()V
    .locals 3

    .prologue
    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    if-eqz v1, :cond_1

    .line 1130
    const/16 v0, 0x30

    .line 1131
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1144
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeListenerActivated:Z

    if-eqz v1, :cond_2

    .line 1145
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureActivationListener:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    invoke-virtual {v1}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->restoreListenerState()V

    .line 1146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeListenerActivated:Z

    .line 1148
    :cond_2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastEdgePositions:I

    if-eq v0, v1, :cond_3

    .line 1149
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureManager:Landroid/service/gesture/EdgeGestureManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureActivationListener:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    invoke-virtual {v1, v2, v0}, Landroid/service/gesture/EdgeGestureManager;->updateEdgeGestureActivationListener(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;I)V

    .line 1151
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastEdgePositions:I

    .line 1127
    :cond_3
    return-void

    .line 1132
    :cond_4
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v1, v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    or-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 1134
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->immersiveModeImplementsPie()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1135
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v1, :cond_6

    .line 1136
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v1, v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    or-int/2addr v0, v1

    goto :goto_1

    .line 1137
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v1, :cond_7

    .line 1138
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v1, v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    or-int/2addr v0, v1

    goto :goto_1

    .line 1140
    :cond_7
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    iget v1, v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private updateKeyAssignments()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x3

    const/4 v11, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2161
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceHardwareKeys:I

    .line 2163
    .local v0, "activeHardwareKeys":I
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2164
    const/4 v0, 0x0

    .line 2166
    :cond_0
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_b

    const/4 v4, 0x1

    .line 2167
    .local v4, "hasMenu":Z
    :goto_0
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_c

    const/4 v3, 0x1

    .line 2168
    .local v3, "hasHome":Z
    :goto_1
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_d

    const/4 v2, 0x1

    .line 2169
    .local v2, "hasAssist":Z
    :goto_2
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_e

    const/4 v1, 0x1

    .line 2171
    .local v1, "hasAppSwitch":Z
    :goto_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2174
    .local v6, "resolver":Landroid/content/ContentResolver;
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 2176
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2177
    const v10, 0x10e0062

    .line 2176
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2179
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-nez v7, :cond_1

    .line 2180
    if-eqz v4, :cond_1

    if-eqz v2, :cond_f

    .line 2183
    :cond_1
    :goto_4
    iput v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 2184
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 2185
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 2186
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2187
    const v10, 0x10e0063

    .line 2186
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2189
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2190
    const v10, 0x10e0060

    .line 2189
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2191
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v7, :cond_2

    .line 2192
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v7, v13, :cond_3

    .line 2193
    :cond_2
    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2196
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2197
    const v10, 0x10e0061

    .line 2196
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2198
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v7, :cond_4

    .line 2199
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v7, v13, :cond_5

    .line 2200
    :cond_4
    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2203
    :cond_5
    const/4 v5, 0x0

    .line 2206
    .local v5, "hasPermanentMenu":Z
    if-eqz v3, :cond_6

    .line 2208
    const-string/jumbo v7, "key_home_long_press_action"

    .line 2209
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2207
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2211
    const-string/jumbo v7, "key_home_double_tap_action"

    .line 2212
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2210
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2214
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq v7, v8, :cond_10

    .line 2215
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v7, v8, :cond_11

    const/4 v5, 0x1

    .line 2217
    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    .line 2219
    const-string/jumbo v7, "key_menu_action"

    .line 2220
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 2218
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 2222
    const-string/jumbo v7, "key_menu_long_press_action"

    .line 2223
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2221
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2225
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    if-eq v7, v8, :cond_12

    .line 2226
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ne v7, v8, :cond_13

    move v7, v8

    .line 2225
    :goto_6
    or-int/2addr v5, v7

    .line 2228
    .end local v5    # "hasPermanentMenu":Z
    :cond_7
    if-eqz v2, :cond_8

    .line 2230
    const-string/jumbo v7, "key_assist_action"

    .line 2231
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 2229
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 2233
    const-string/jumbo v7, "key_assist_long_press_action"

    .line 2234
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 2232
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 2236
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    if-eq v7, v8, :cond_14

    .line 2237
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    if-ne v7, v8, :cond_15

    move v7, v8

    .line 2236
    :goto_7
    or-int/2addr v5, v7

    .line 2239
    :cond_8
    if-eqz v1, :cond_a

    .line 2241
    const-string/jumbo v7, "key_app_switch_action"

    .line 2242
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 2240
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 2244
    const-string/jumbo v7, "key_app_switch_long_press_action"

    .line 2245
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2243
    invoke-static {v6, v7, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2247
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    if-eq v7, v8, :cond_9

    .line 2248
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ne v7, v8, :cond_16

    .line 2247
    :cond_9
    :goto_8
    or-int/2addr v5, v8

    .line 2251
    :cond_a
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasPermanentMenuKey:Z

    .line 2160
    return-void

    .line 2166
    .end local v1    # "hasAppSwitch":Z
    .end local v2    # "hasAssist":Z
    .end local v3    # "hasHome":Z
    .end local v4    # "hasMenu":Z
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "hasMenu":Z
    goto/16 :goto_0

    .line 2167
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "hasHome":Z
    goto/16 :goto_1

    .line 2168
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "hasAssist":Z
    goto/16 :goto_2

    .line 2169
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "hasAppSwitch":Z
    goto/16 :goto_3

    .line 2181
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_f
    iput v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    goto/16 :goto_4

    .line 2214
    .restart local v5    # "hasPermanentMenu":Z
    :cond_10
    const/4 v5, 0x1

    goto :goto_5

    .line 2215
    :cond_11
    const/4 v5, 0x0

    goto :goto_5

    :cond_12
    move v7, v8

    .line 2225
    goto :goto_6

    :cond_13
    move v7, v9

    .line 2226
    goto :goto_6

    .end local v5    # "hasPermanentMenu":Z
    :cond_14
    move v7, v8

    .line 2236
    goto :goto_7

    :cond_15
    move v7, v9

    .line 2237
    goto :goto_7

    :cond_16
    move v8, v9

    .line 2248
    goto :goto_8
.end method

.method private updateLightStatusBarLw(I)I
    .locals 3
    .param p1, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 8069
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_2

    .line 8071
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8073
    .local v0, "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    .line 8074
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, v1, :cond_3

    .line 8077
    and-int/lit16 p1, p1, -0x2001

    .line 8078
    invoke-static {v0, v2}, Landroid/view/WindowManagerPolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    or-int/2addr p1, v1

    .line 8085
    :cond_1
    :goto_1
    return p1

    .line 8070
    .end local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 8080
    :cond_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8082
    and-int/lit16 p1, p1, -0x2001

    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 7627
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 7628
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    .line 7629
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    .line 7630
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 7631
    if-eqz v0, :cond_2

    .line 7633
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7638
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 7626
    return-void

    .line 7628
    :cond_1
    const/4 v0, 0x0

    .local v0, "enable":Z
    goto :goto_0

    .line 7636
    .end local v0    # "enable":Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7627
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateNavigationBarSize()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 2518
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2522
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2523
    const-string/jumbo v3, "navigation_bar_height"

    .line 2524
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2526
    const v5, 0x1050018

    .line 2524
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2520
    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2519
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v2, v3, v4

    .line 2518
    aput v2, v0, v1

    .line 2528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2532
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2533
    const-string/jumbo v3, "navigation_bar_height_landscape"

    .line 2534
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2536
    const v5, 0x1050019

    .line 2534
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2530
    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2529
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v2, v3, v4

    .line 2528
    aput v2, v0, v1

    .line 2541
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2547
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2548
    const-string/jumbo v3, "navigation_bar_width"

    .line 2549
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2551
    const v5, 0x105001a

    .line 2549
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2545
    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2544
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v2, v3, v4

    .line 2543
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v2, v3, v4

    .line 2542
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v2, v3, v4

    .line 2541
    aput v2, v0, v1

    .line 2517
    return-void
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 7657
    if-eqz p1, :cond_1

    .line 7658
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 7659
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 7656
    :cond_0
    :goto_0
    return-void

    .line 7662
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 7663
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 7664
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 8090
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 8092
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    .line 8093
    .local v20, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 8094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 8097
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    .line 8098
    .local v23, "type":I
    const/16 v24, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v19, 0x1

    .line 8099
    .local v19, "statusBarHasFocus":Z
    :goto_1
    if-eqz v19, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 8111
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 8112
    const v24, 0x3fff7fff

    and-int p3, p3, v24

    .line 8118
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const/4 v11, 0x1

    .line 8120
    .local v11, "immersiveSticky":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 8121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    if-eqz v24, :cond_f

    const/4 v9, 0x1

    .line 8124
    .local v9, "hideStatusBarWM":Z
    :goto_4
    and-int/lit8 v24, p3, 0x4

    if-eqz v24, :cond_11

    const/4 v8, 0x1

    .line 8126
    .local v8, "hideStatusBarSysui":Z
    :goto_5
    and-int/lit8 v24, p3, 0x2

    if-eqz v24, :cond_12

    const/4 v7, 0x1

    .line 8129
    .local v7, "hideNavBarSysui":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 8130
    if-nez v9, :cond_13

    .line 8131
    if-eqz v8, :cond_3

    .line 8130
    if-nez v11, :cond_13

    .line 8132
    :cond_3
    move/from16 v22, v19

    .line 8135
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    if-eqz v7, :cond_15

    .line 8136
    move/from16 v21, v11

    .line 8138
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 8139
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_17

    .line 8140
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v24, v0

    sub-long v24, v14, v24

    const-wide/16 v26, 0x7530

    cmp-long v24, v24, v26

    if-gtz v24, :cond_16

    const/16 v17, 0x1

    .line 8141
    .local v17, "pendingPanic":Z
    :goto_9
    if-eqz v17, :cond_4

    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 8149
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 8150
    if-eqz v22, :cond_19

    .line 8149
    :cond_5
    const/4 v5, 0x0

    .line 8151
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 8152
    if-eqz v21, :cond_1a

    const/4 v4, 0x0

    .line 8153
    .local v4, "denyTransientNav":Z
    :goto_c
    if-nez v5, :cond_6

    if-eqz v4, :cond_7

    .line 8155
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 8156
    and-int/lit8 p3, p3, -0x8

    .line 8159
    :cond_7
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_1c

    const/4 v10, 0x1

    .line 8160
    .local v10, "immersive":Z
    :goto_d
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    const/4 v11, 0x1

    .line 8161
    :goto_e
    if-nez v10, :cond_1e

    move v12, v11

    .line 8163
    :goto_f
    if-eqz v7, :cond_8

    if-eqz v12, :cond_1f

    .line 8170
    :cond_8
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 8173
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v16

    .line 8174
    .local v16, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v13

    .line 8175
    .local v13, "newImmersiveMode":Z
    if-eqz p1, :cond_9

    move/from16 v0, v16

    if-eq v0, v13, :cond_9

    .line 8176
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v18

    .line 8177
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v24, v0

    .line 8178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v25

    .line 8177
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;ZZ)V

    .line 8181
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 8183
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v24

    or-int p3, p3, v24

    return p3

    .line 8091
    .end local v4    # "denyTransientNav":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersive":Z
    .end local v11    # "immersiveSticky":Z
    .end local v13    # "newImmersiveMode":Z
    .end local v14    # "now":J
    .end local v16    # "oldImmersiveMode":Z
    .end local v17    # "pendingPanic":Z
    .end local v19    # "statusBarHasFocus":Z
    .end local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v23    # "type":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    .restart local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto/16 :goto_0

    .line 8098
    .restart local v23    # "type":I
    :cond_b
    const/16 v19, 0x0

    .restart local v19    # "statusBarHasFocus":Z
    goto/16 :goto_1

    .line 8100
    :cond_c
    const/16 v6, 0x3806

    .line 8105
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 8106
    const v6, -0x3fffc7fa

    .line 8108
    :cond_d
    not-int v0, v6

    move/from16 v24, v0

    and-int v24, v24, p3

    and-int v25, p2, v6

    or-int p3, v24, v25

    goto/16 :goto_2

    .line 8118
    .end local v6    # "flags":I
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "immersiveSticky":Z
    goto/16 :goto_3

    .line 8121
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    .line 8120
    .end local v9    # "hideStatusBarWM":Z
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    .line 8124
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "hideStatusBarSysui":Z
    goto/16 :goto_5

    .line 8126
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "hideNavBarSysui":Z
    goto/16 :goto_6

    .line 8129
    :cond_13
    const/16 v22, 0x1

    .local v22, "transientStatusBarAllowed":Z
    goto/16 :goto_7

    .end local v22    # "transientStatusBarAllowed":Z
    :cond_14
    const/16 v22, 0x0

    .restart local v22    # "transientStatusBarAllowed":Z
    goto/16 :goto_7

    .line 8135
    .end local v22    # "transientStatusBarAllowed":Z
    :cond_15
    const/16 v21, 0x0

    .local v21, "transientNavBarAllowed":Z
    goto/16 :goto_8

    .line 8140
    .end local v21    # "transientNavBarAllowed":Z
    .restart local v14    # "now":J
    :cond_16
    const/16 v17, 0x0

    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    .line 8139
    .end local v17    # "pendingPanic":Z
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    .line 8141
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 8144
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    .line 8145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 8146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->showTransient()V

    goto/16 :goto_a

    .line 8150
    :cond_19
    move v5, v8

    .local v5, "denyTransientStatus":Z
    goto/16 :goto_b

    .line 8152
    .end local v5    # "denyTransientStatus":Z
    :cond_1a
    const/4 v4, 0x1

    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    .line 8151
    .end local v4    # "denyTransientNav":Z
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    .line 8159
    :cond_1c
    const/4 v10, 0x0

    .restart local v10    # "immersive":Z
    goto/16 :goto_d

    .line 8160
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 8161
    :cond_1e
    const/4 v12, 0x1

    .local v12, "navAllowedHidden":Z
    goto/16 :goto_f

    .line 8163
    .end local v12    # "navAllowedHidden":Z
    :cond_1f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v24

    .line 8164
    const/16 v25, 0x7e6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v25

    .line 8163
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 8167
    and-int/lit8 p3, p3, -0x3

    goto/16 :goto_10
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 13

    .prologue
    const/high16 v12, 0x8000000

    const/high16 v11, 0x4000000

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 7993
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7995
    .local v6, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v6, :cond_1

    .line 7996
    return v8

    .line 7994
    .end local v6    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v6    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 7998
    :cond_1
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v9, :cond_2

    .line 8005
    return v8

    .line 8008
    :cond_2
    invoke-static {v6, v10}, Landroid/view/WindowManagerPolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    .line 8009
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v10, v10

    .line 8008
    and-int/2addr v9, v10

    .line 8010
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v10, v10

    .line 8008
    and-int v2, v9, v10

    .line 8011
    .local v2, "tmpVisibility":I
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    .line 8012
    .local v5, "wasCleared":Z
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v9, :cond_5

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v9

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v9, v10, :cond_5

    .line 8014
    const/4 v9, 0x7

    invoke-static {v6, v9}, Landroid/view/WindowManagerPolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v9

    not-int v9, v9

    .line 8013
    and-int/2addr v2, v9

    .line 8015
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    .line 8024
    :goto_1
    if-eqz v5, :cond_3

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    if-eqz v9, :cond_6

    .line 8031
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopWindowIsKeyguard:Z

    .line 8032
    .local v3, "topWindowWasKeyguard":Z
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_7

    :goto_3
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopWindowIsKeyguard:Z

    .line 8033
    if-eqz v3, :cond_4

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopWindowIsKeyguard:Z

    if-eqz v7, :cond_8

    .line 8040
    :cond_4
    :goto_4
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v6, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v4

    .line 8041
    .local v4, "visibility":I
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v4, v7

    .line 8042
    .local v0, "diff":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 8043
    .local v1, "needsMenu":Z
    if-nez v0, :cond_9

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v7, v1, :cond_9

    .line 8044
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v9

    if-ne v7, v9, :cond_9

    .line 8045
    return v8

    .line 8017
    .end local v0    # "diff":I
    .end local v1    # "needsMenu":Z
    .end local v3    # "topWindowWasKeyguard":Z
    .end local v4    # "visibility":I
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    goto :goto_1

    .line 8025
    :cond_6
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_3

    .line 8026
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v9}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 8027
    or-int/2addr v2, v12

    .line 8028
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v9, v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addSystemUIVisibilityFlag(I)V

    goto :goto_2

    .restart local v3    # "topWindowWasKeyguard":Z
    :cond_7
    move v7, v8

    .line 8032
    goto :goto_3

    .line 8034
    :cond_8
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_4

    .line 8035
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 8036
    or-int/2addr v2, v11

    .line 8037
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7, v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addSystemUIVisibilityFlag(I)V

    goto :goto_4

    .line 8047
    .restart local v0    # "diff":I
    .restart local v1    # "needsMenu":Z
    .restart local v4    # "visibility":I
    :cond_9
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 8048
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 8049
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 8050
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/policy/PhoneWindowManager$31;

    invoke-direct {v8, p0, v4, v6, v1}, Lcom/android/server/policy/PhoneWindowManager$31;-><init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8065
    return v0
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .prologue
    .line 2556
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    .line 2555
    :goto_0
    return-void

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    goto :goto_0
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 7
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 6943
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private wakeUp(JZLjava/lang/String;Z)Z
    .locals 5
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "withProximityCheck"    # Z

    .prologue
    const/4 v3, 0x0

    .line 6948
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 6949
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 6950
    return v3

    .line 6953
    :cond_0
    if-eqz v0, :cond_1

    .line 6954
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6955
    const-string/jumbo v2, "theater_mode_on"

    .line 6954
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6958
    :cond_1
    if-eqz p5, :cond_2

    .line 6959
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUpWithProximityCheck(JLjava/lang/String;)V

    .line 6963
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 6961
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 6939
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const-string/jumbo v1, "android.policy:POWER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6938
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 15
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I

    .prologue
    .line 3055
    if-nez p2, :cond_0

    .line 3056
    const/4 v12, 0x0

    return-object v12

    .line 3059
    :cond_0
    const/4 v11, 0x0

    .line 3060
    .local v11, "wm":Landroid/view/WindowManager;
    const/4 v9, 0x0

    .line 3063
    .local v9, "view":Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3067
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    move/from16 v0, p3

    if-ne v0, v12, :cond_1

    if-eqz p6, :cond_2

    .line 3069
    :cond_1
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 3070
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3076
    :cond_2
    :goto_0
    :try_start_2
    new-instance v10, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v10, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 3077
    .local v10, "win":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3079
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    const/4 v13, 0x0

    .line 3078
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-nez v12, :cond_3

    .line 3081
    const/16 v12, 0xe

    const/4 v13, 0x0

    .line 3080
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 3078
    if-eqz v12, :cond_4

    .line 3082
    :cond_3
    const/4 v12, 0x0

    return-object v12

    .line 3085
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3086
    .local v7, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 3089
    const/4 v12, 0x3

    .line 3088
    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 3091
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3095
    :try_start_3
    iget-boolean v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_5

    .line 3096
    const/high16 v13, 0x80000

    or-int p9, p9, v13

    :cond_5
    :try_start_4
    monitor-exit v12

    .line 3105
    or-int/lit8 v12, p9, 0x10

    or-int/lit8 v12, v12, 0x8

    .line 3108
    const/high16 v13, 0x20000

    .line 3105
    or-int/2addr v12, v13

    .line 3109
    or-int/lit8 v13, p9, 0x10

    or-int/lit8 v13, v13, 0x8

    .line 3112
    const/high16 v14, 0x20000

    .line 3109
    or-int/2addr v13, v14

    .line 3104
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3114
    move/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 3115
    move/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 3117
    const/4 v12, -0x1

    .line 3118
    const/4 v13, -0x1

    .line 3117
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 3120
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 3121
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3122
    move-object/from16 v0, p2

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3123
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v12

    .line 3124
    const/16 v13, 0x8

    const/4 v14, 0x0

    .line 3123
    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3125
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3127
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3129
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v12

    if-nez v12, :cond_6

    .line 3130
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3133
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3135
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 3137
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v12

    if-eqz v12, :cond_9

    .line 3144
    const/4 v12, 0x0

    .line 3167
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_7

    .line 3168
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v13, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3144
    :cond_7
    return-object v12

    .line 3091
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v9, "view":Landroid/view/View;
    :catchall_0
    move-exception v13

    :try_start_5
    monitor-exit v12

    throw v13
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3157
    .end local v2    # "context":Landroid/content/Context;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catch_0
    move-exception v4

    .line 3159
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_6
    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " already running, starting window not displayed. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3160
    invoke-virtual {v4}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 3159
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3167
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_8

    .line 3168
    const-string/jumbo v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3173
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    :goto_1
    const/4 v12, 0x0

    return-object v12

    .line 3152
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    .local v9, "view":Landroid/view/View;
    .restart local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_9
    :try_start_7
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v12, v9, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3156
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v12

    if-eqz v12, :cond_b

    move-object v12, v9

    .line 3167
    :goto_2
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_a

    .line 3168
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v13, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3156
    :cond_a
    return-object v12

    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    .line 3161
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catch_1
    move-exception v5

    .line 3165
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " failed creating starting window"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3167
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_8

    .line 3168
    const-string/jumbo v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1

    .line 3166
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v12

    .line 3167
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_c

    .line 3168
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v13, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3166
    :cond_c
    throw v12

    .line 3071
    .restart local v2    # "context":Landroid/content/Context;
    .local v9, "view":Landroid/view/View;
    :catch_2
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 2832
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2834
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2835
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 2837
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1

    .line 2838
    if-ne p2, v1, :cond_2

    .line 2839
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    .line 2837
    if-eqz v0, :cond_2

    .line 2840
    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2841
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    .line 2842
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2846
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    .line 2847
    if-ne p3, v1, :cond_4

    .line 2848
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    .line 2846
    if-eqz v0, :cond_4

    .line 2849
    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2831
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 4404
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 4405
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 4406
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 4408
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateEdgeGestureListenerState()V

    .line 4412
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4415
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    .line 4416
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    .line 4415
    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2766
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2787
    :cond_0
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 2789
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2792
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2793
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2794
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2798
    :cond_2
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2800
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.PREVENT_SYSTEM_KEYS"

    .line 2801
    const-string/jumbo v2, "No permission to prevent system key"

    .line 2800
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    :cond_3
    return-void

    .line 2770
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2772
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2780
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v0, :cond_0

    .line 2781
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2782
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 2766
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 5784
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_1

    .line 5786
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 5788
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/16 v10, 0x7d0

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5456
    invoke-static {p1, p2}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 5457
    .local v3, "fl":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_0

    .line 5458
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    .line 5457
    if-eqz v5, :cond_0

    .line 5458
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v5, v8, :cond_0

    .line 5459
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5460
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5462
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v10, :cond_2

    .line 5463
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_1

    .line 5464
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5465
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    .line 5467
    :cond_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_2

    .line 5468
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 5472
    :cond_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v6, :cond_7

    .line 5473
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v5, v10, :cond_6

    const/4 v1, 0x1

    .line 5474
    .local v1, "appWindow":Z
    :goto_0
    const/high16 v5, 0x80000

    and-int/2addr v5, v3

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    .line 5475
    .local v4, "showWhenLocked":Z
    :goto_1
    const/high16 v5, 0x400000

    and-int/2addr v5, v3

    if-eqz v5, :cond_9

    const/4 v2, 0x1

    .line 5477
    .local v2, "dismissKeyguard":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_3

    .line 5478
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 5477
    if-eqz v5, :cond_3

    .line 5478
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5561
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_4

    .line 5566
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v5, :cond_4

    .line 5567
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5568
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5571
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_5

    .line 5572
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 5571
    if-eqz v5, :cond_5

    .line 5572
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5453
    :cond_5
    :goto_4
    return-void

    .line 5473
    .end local v1    # "appWindow":Z
    .end local v2    # "dismissKeyguard":Z
    .end local v4    # "showWhenLocked":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "appWindow":Z
    goto :goto_0

    .line 5472
    .end local v1    # "appWindow":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "appWindow":Z
    goto :goto_0

    .line 5474
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "showWhenLocked":Z
    goto :goto_1

    .line 5475
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "dismissKeyguard":Z
    goto :goto_2

    .line 5479
    :cond_a
    and-int/lit16 v5, v3, 0x800

    if-eqz v5, :cond_b

    .line 5480
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_14

    .line 5481
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5486
    :cond_b
    :goto_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v5, v8, :cond_d

    .line 5489
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_c

    .line 5490
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    .line 5489
    if-eqz v5, :cond_d

    .line 5491
    :cond_c
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 5492
    const/4 v1, 0x1

    .line 5496
    :cond_d
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    .line 5501
    .local v0, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    .line 5502
    if-eqz v4, :cond_16

    .line 5504
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5505
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5506
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5507
    if-eqz v2, :cond_e

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_15

    .line 5509
    :cond_e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5510
    :cond_f
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5511
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5512
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5525
    :cond_10
    :goto_6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_13

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_13

    .line 5526
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v5, v9, :cond_13

    .line 5527
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v9, :cond_13

    .line 5529
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5530
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_11

    .line 5531
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5533
    :cond_11
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 5534
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v5, :cond_1b

    .line 5537
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, p1, :cond_19

    .line 5538
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-ne v5, v8, :cond_19

    .line 5539
    const/4 v5, 0x2

    .line 5537
    :goto_7
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 5540
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5541
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    .line 5542
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    :goto_8
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5550
    :cond_12
    :goto_9
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_13

    .line 5551
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5555
    :cond_13
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_4

    .line 5556
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 5557
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    .line 5558
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto/16 :goto_3

    .line 5483
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_14
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_5

    .line 5508
    .restart local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_15
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5515
    :cond_16
    if-eqz v2, :cond_18

    .line 5516
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_17

    .line 5517
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5521
    :goto_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5519
    :cond_17
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 5523
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_19
    move v5, v6

    .line 5539
    goto :goto_7

    :cond_1a
    move v5, v7

    .line 5542
    goto :goto_8

    .line 5543
    :cond_1b
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v4, :cond_12

    .line 5544
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v5

    .line 5543
    if-eqz v5, :cond_12

    .line 5547
    :cond_1c
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5548
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    goto :goto_9

    .line 5573
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_1d
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v5

    .line 5571
    if-eqz v5, :cond_5

    .line 5574
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_4
.end method

.method public beginLayoutLw(ZIII)V
    .locals 34
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 4490
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    .line 4492
    if-eqz p1, :cond_c

    .line 4493
    packed-switch p4, :pswitch_data_0

    .line 4513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v22, v0

    .line 4514
    .local v22, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v24, v0

    .line 4515
    .local v24, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v23, v0

    .line 4516
    .local v23, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v21, v0

    .line 4525
    .local v21, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4526
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4527
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4528
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    .line 4530
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    .line 4531
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    .line 4532
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    .line 4533
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4534
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4535
    sub-int v2, p2, v22

    sub-int v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4536
    sub-int v2, p3, v24

    sub-int v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4538
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4540
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4542
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    .line 4541
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 4544
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 4543
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 4546
    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    .line 4545
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 4548
    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceImmersiveBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 4547
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 4549
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 4550
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4553
    sget-object v25, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4554
    .local v25, "pf":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4555
    .local v11, "df":Landroid/graphics/Rect;
    sget-object v19, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4556
    .local v19, "of":Landroid/graphics/Rect;
    sget-object v33, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4557
    .local v33, "vf":Landroid/graphics/Rect;
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4558
    .local v8, "dcf":Landroid/graphics/Rect;
    sget-object v20, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 4559
    .local v20, "osf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4560
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4561
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4562
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4563
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 4565
    if-eqz p1, :cond_b

    .line 4568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v29, v0

    .line 4569
    .local v29, "sysui":I
    and-int/lit8 v2, v29, 0x2

    if-nez v2, :cond_d

    const/16 v18, 0x1

    .line 4571
    .local v18, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    .line 4570
    and-int v2, v2, v29

    if-eqz v2, :cond_e

    const/16 v17, 0x1

    .line 4572
    .local v17, "navTranslucent":Z
    :goto_2
    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_f

    const/4 v12, 0x1

    .line 4573
    .local v12, "immersive":Z
    :goto_3
    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_10

    const/4 v13, 0x1

    .line 4574
    .local v13, "immersiveSticky":Z
    :goto_4
    if-nez v12, :cond_11

    move/from16 v16, v13

    .line 4575
    :goto_5
    if-eqz v13, :cond_12

    const/4 v2, 0x0

    :goto_6
    and-int v17, v17, v2

    .line 4576
    .local v17, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v2, :cond_13

    :cond_0
    const/4 v14, 0x0

    .line 4577
    .local v14, "isKeyguardShowing":Z
    :goto_7
    if-nez v14, :cond_1

    .line 4578
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v17, v17, v2

    .line 4585
    :cond_1
    if-nez v18, :cond_2

    if-eqz v16, :cond_14

    .line 4586
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-eqz v2, :cond_3

    .line 4587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 4588
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 4598
    :cond_3
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_9
    or-int v18, v18, v2

    .line 4600
    .local v18, "navVisible":Z
    const/16 v32, 0x0

    .line 4601
    .local v32, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    .line 4602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v31

    .line 4607
    .local v31, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_16

    :cond_4
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 4608
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_1a

    .line 4610
    sub-int v2, p3, v21

    .line 4611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    .line 4610
    sub-int v30, v2, v3

    .line 4612
    .local v30, "top":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p3, v21

    const/4 v4, 0x0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4613
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    .line 4614
    if-eqz v31, :cond_17

    .line 4615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4625
    :goto_b
    if-eqz v18, :cond_5

    if-eqz v17, :cond_19

    .line 4689
    .end local v30    # "top":I
    :cond_5
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    .line 4690
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4691
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    .line 4692
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    .line 4693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 4696
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 4697
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 4695
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4700
    const/16 v32, 0x1

    .line 4707
    .end local v31    # "transientNavBarShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a

    .line 4709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4710
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4711
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4713
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4712
    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4715
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4716
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4717
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v25

    move-object v4, v11

    move-object/from16 v5, v33

    move-object/from16 v6, v33

    move-object/from16 v7, v33

    move-object/from16 v9, v33

    move-object/from16 v10, v33

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4727
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 4729
    const/high16 v2, 0x4000000

    and-int v2, v2, v29

    if-eqz v2, :cond_20

    const/16 v27, 0x1

    .line 4731
    .local v27, "statusBarTransient":Z
    :goto_d
    const v2, 0x40008000    # 2.0078125f

    .line 4730
    and-int v2, v2, v29

    if-eqz v2, :cond_21

    const/16 v28, 0x1

    .line 4732
    .local v28, "statusBarTranslucent":Z
    :goto_e
    if-nez v14, :cond_7

    .line 4733
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v28, v28, v2

    .line 4738
    .end local v28    # "statusBarTranslucent":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v27, :cond_22

    .line 4756
    :cond_8
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4764
    :cond_9
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4765
    const/16 v32, 0x1

    .line 4768
    .end local v27    # "statusBarTransient":Z
    :cond_a
    if-eqz v32, :cond_b

    .line 4769
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 4489
    .end local v12    # "immersive":Z
    .end local v13    # "immersiveSticky":Z
    .end local v14    # "isKeyguardShowing":Z
    .end local v17    # "navTranslucent":Z
    .end local v18    # "navVisible":Z
    .end local v29    # "sysui":I
    .end local v32    # "updateSysUiVisibility":Z
    :cond_b
    return-void

    .line 4495
    .end local v8    # "dcf":Landroid/graphics/Rect;
    .end local v11    # "df":Landroid/graphics/Rect;
    .end local v19    # "of":Landroid/graphics/Rect;
    .end local v20    # "osf":Landroid/graphics/Rect;
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    .end local v25    # "pf":Landroid/graphics/Rect;
    .end local v33    # "vf":Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v22, v0

    .line 4496
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v24, v0

    .line 4497
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v23, v0

    .line 4498
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4501
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v22, v0

    .line 4502
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v24, v0

    .line 4503
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v23, v0

    .line 4504
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4507
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v22, v0

    .line 4508
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v24, v0

    .line 4509
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v23, v0

    .line 4510
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4520
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :cond_c
    const/16 v22, 0x0

    .line 4521
    .restart local v22    # "overscanLeft":I
    const/16 v24, 0x0

    .line 4522
    .restart local v24    # "overscanTop":I
    const/16 v23, 0x0

    .line 4523
    .restart local v23    # "overscanRight":I
    const/16 v21, 0x0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4569
    .restart local v8    # "dcf":Landroid/graphics/Rect;
    .restart local v11    # "df":Landroid/graphics/Rect;
    .restart local v19    # "of":Landroid/graphics/Rect;
    .restart local v20    # "osf":Landroid/graphics/Rect;
    .restart local v25    # "pf":Landroid/graphics/Rect;
    .restart local v29    # "sysui":I
    .restart local v33    # "vf":Landroid/graphics/Rect;
    :cond_d
    const/16 v18, 0x0

    .local v18, "navVisible":Z
    goto/16 :goto_1

    .line 4570
    :cond_e
    const/16 v17, 0x0

    .local v17, "navTranslucent":Z
    goto/16 :goto_2

    .line 4572
    :cond_f
    const/4 v12, 0x0

    .restart local v12    # "immersive":Z
    goto/16 :goto_3

    .line 4573
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "immersiveSticky":Z
    goto/16 :goto_4

    .line 4574
    :cond_11
    const/16 v16, 0x1

    .local v16, "navAllowedHidden":Z
    goto/16 :goto_5

    .line 4575
    .end local v16    # "navAllowedHidden":Z
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 4576
    .local v17, "navTranslucent":Z
    :cond_13
    const/4 v14, 0x1

    .restart local v14    # "isKeyguardShowing":Z
    goto/16 :goto_7

    .line 4590
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_3

    .line 4591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 4592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4591
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    goto/16 :goto_8

    .line 4598
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 4607
    .local v18, "navVisible":Z
    .restart local v31    # "transientNavBarShowing":Z
    .restart local v32    # "updateSysUiVisibility":Z
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 4616
    .restart local v30    # "top":I
    :cond_17
    if-eqz v18, :cond_18

    .line 4617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4618
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 4619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4620
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_b

    .line 4623
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_b

    .line 4625
    :cond_19
    if-nez v16, :cond_5

    .line 4626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4631
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    goto/16 :goto_c

    .line 4633
    .end local v30    # "top":I
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v2, :cond_1d

    .line 4635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v2, v2, p4

    add-int v26, v22, v2

    .line 4636
    .local v26, "right":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4637
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    .line 4638
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    .line 4639
    if-eqz v31, :cond_1b

    .line 4640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4654
    :goto_11
    if-eqz v18, :cond_5

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4659
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    goto/16 :goto_c

    .line 4641
    :cond_1b
    if-eqz v18, :cond_1c

    .line 4642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4643
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 4644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4645
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4646
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    .line 4647
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 4648
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    .line 4647
    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_11

    .line 4651
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_11

    .line 4663
    .end local v26    # "right":I
    :cond_1d
    sub-int v2, p2, v23

    .line 4664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    .line 4663
    sub-int v15, v2, v3

    .line 4665
    .local v15, "left":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p2, v23

    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-virtual {v2, v15, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4666
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    .line 4667
    if-eqz v31, :cond_1e

    .line 4668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4678
    :goto_12
    if-eqz v18, :cond_5

    if-nez v17, :cond_5

    if-nez v16, :cond_5

    .line 4679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4684
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_c

    .line 4669
    :cond_1e
    if-eqz v18, :cond_1f

    .line 4670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4671
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 4672
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4673
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_12

    .line 4676
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_12

    .line 4729
    .end local v15    # "left":I
    .end local v31    # "transientNavBarShowing":Z
    :cond_20
    const/16 v27, 0x0

    .restart local v27    # "statusBarTransient":Z
    goto/16 :goto_d

    .line 4730
    :cond_21
    const/16 v28, 0x0

    .restart local v28    # "statusBarTranslucent":Z
    goto/16 :goto_e

    .line 4742
    .end local v28    # "statusBarTranslucent":Z
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 4744
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    .line 4745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4746
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    .line 4747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    goto/16 :goto_f

    .line 4757
    :cond_23
    if-nez v27, :cond_9

    if-nez v28, :cond_9

    .line 4758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_9

    .line 4762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    goto/16 :goto_10

    .line 4493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 5429
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5430
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5431
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 5432
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 5433
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 5434
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5435
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 5436
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5437
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5439
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5440
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5441
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 5442
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    .line 5443
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 5444
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5445
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    .line 5446
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v1, :cond_0

    .line 5447
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 5446
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    .line 5428
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 3028
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 3037
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 3038
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v2

    .line 3037
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 3034
    :sswitch_0
    return v0

    .line 3028
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 8269
    sparse-switch p1, :sswitch_data_0

    .line 8277
    const/4 v0, 0x1

    return v0

    .line 8274
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 8269
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/16 v9, 0xbb7

    const/16 v6, 0x7d0

    const/16 v5, 0x3e8

    const/4 v8, -0x8

    const/4 v7, 0x0

    .line 2624
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2626
    .local v3, "type":I
    const/4 v4, -0x1

    aput v4, p2, v7

    .line 2628
    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x63

    if-le v3, v4, :cond_3

    .line 2629
    :cond_0
    if-lt v3, v5, :cond_1

    const/16 v4, 0x7cf

    if-le v3, v4, :cond_3

    .line 2630
    :cond_1
    if-lt v3, v6, :cond_2

    if-le v3, v9, :cond_3

    .line 2631
    :cond_2
    const/16 v4, -0xa

    return v4

    .line 2634
    :cond_3
    if-lt v3, v6, :cond_4

    if-le v3, v9, :cond_5

    .line 2636
    :cond_4
    return v7

    .line 2638
    :cond_5
    const/4 v2, 0x0

    .line 2639
    .local v2, "permission":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 2666
    const-string/jumbo v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2668
    .end local v2    # "permission":Ljava/lang/String;
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_a

    .line 2669
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    if-ne v2, v4, :cond_8

    .line 2670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2672
    .local v0, "callingUid":I
    if-ne v0, v5, :cond_6

    .line 2673
    return v7

    .line 2644
    .end local v0    # "callingUid":I
    .restart local v2    # "permission":Ljava/lang/String;
    :sswitch_1
    const/16 v4, 0x2d

    aput v4, p2, v7

    goto :goto_0

    .line 2659
    :sswitch_2
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2660
    .local v2, "permission":Ljava/lang/String;
    const/16 v4, 0x18

    aput v4, p2, v7

    goto :goto_0

    .line 2663
    .local v2, "permission":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "cyanogenmod.permission.THIRD_PARTY_KEYGUARD"

    .local v2, "permission":Ljava/lang/String;
    goto :goto_0

    .line 2678
    .end local v2    # "permission":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v5, p2, v7

    .line 2679
    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2678
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 2680
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 2691
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 2693
    return v8

    .line 2685
    :pswitch_0
    return v7

    .line 2687
    :pswitch_1
    return v8

    .line 2695
    :cond_7
    return v7

    .line 2698
    .end local v0    # "callingUid":I
    .end local v1    # "mode":I
    :cond_8
    const-string/jumbo v4, "cyanogenmod.permission.THIRD_PARTY_KEYGUARD"

    if-ne v2, v4, :cond_9

    .line 2700
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2701
    const-string/jumbo v5, "android.permission.THIRD_PARTY_KEYGUARD"

    .line 2700
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 2703
    return v7

    .line 2708
    :cond_9
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    .line 2710
    return v8

    .line 2713
    :cond_a
    return v7

    .line 2639
    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_0
        0x7f0 -> :sswitch_0
        0xbb6 -> :sswitch_3
    .end sparse-switch

    .line 2680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2721
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 2728
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    .line 2729
    return v0

    .line 2759
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2760
    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2759
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2721
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
        0xbb6 -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .prologue
    .line 3385
    if-eqz p2, :cond_0

    .line 3386
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a003c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 3389
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 3390
    const v3, 0x10a003d

    .line 3389
    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 3394
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 3395
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 3396
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3395
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3391
    .end local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x10a003b

    goto :goto_0

    .line 3399
    .restart local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .restart local v1    # "i":I
    .restart local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    return-object v2
.end method

.method public createForceHideWallpaperExitAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z
    .param p2, "keyguardShowingMedia"    # Z

    .prologue
    .line 3406
    if-eqz p1, :cond_0

    .line 3407
    const/4 v0, 0x0

    return-object v0

    .line 3408
    :cond_0
    if-eqz p2, :cond_1

    .line 3409
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0041

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 7755
    const/4 v2, 0x0

    .line 7760
    .local v2, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    if-ne v4, v6, :cond_0

    .line 7762
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    .line 7776
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_5

    .line 7777
    return-object v7

    .line 7764
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object v3, v2

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 7768
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 7769
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 7770
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 7773
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 7771
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_3
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v4, v6, :cond_2

    :cond_4
    move-object v3, v2

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 7780
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x0

    .line 7781
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 7786
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 7783
    const v6, 0x100c0

    .line 7781
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 7787
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_6

    .line 7788
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7790
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_6
    if-eqz v0, :cond_7

    .line 7791
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 7792
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 7790
    if-eqz v4, :cond_7

    .line 7793
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7794
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7795
    return-object v2

    .line 7798
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_7
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 7170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7172
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$27;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$27;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7169
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6716
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    const/4 v4, 0x1

    .line 6718
    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6724
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6725
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6715
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6690
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 6695
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6696
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6697
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6702
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 6703
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 6704
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6706
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6708
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6709
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6685
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 6711
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6729
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6730
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6728
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 4055
    const/16 v18, 0x0

    .line 4056
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 4057
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 4058
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 4059
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v23

    .line 4060
    .local v23, "scanCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 4061
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 4062
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 4066
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_4

    .line 4067
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 4072
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 4078
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 4080
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 4081
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 4082
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 4083
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    .line 4084
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    .line 4079
    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 4086
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4087
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 4088
    const/16 v18, 0x0

    .line 4091
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_0
    if-eqz v19, :cond_5

    .line 4092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4107
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    .end local v23    # "scanCode":I
    :cond_1
    :goto_2
    return-object v18

    .line 4062
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    .restart local v23    # "scanCode":I
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "initialDown":Z
    goto :goto_0

    .line 4061
    .end local v19    # "initialDown":Z
    :cond_3
    const/16 v19, 0x0

    .restart local v19    # "initialDown":Z
    goto :goto_0

    .line 4069
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 4093
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v14    # "flags":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4095
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 8291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8292
    const-string/jumbo v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8293
    const-string/jumbo v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8295
    const-string/jumbo v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8296
    const-string/jumbo v0, " mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8297
    const-string/jumbo v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8298
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eqz v0, :cond_13

    .line 8300
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8301
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8302
    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8303
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8304
    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8305
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8307
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 8308
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8309
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8311
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8312
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8314
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8316
    const-string/jumbo v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8317
    const-string/jumbo v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8318
    const-string/jumbo v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8319
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8320
    const-string/jumbo v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8321
    const-string/jumbo v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8322
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8323
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8324
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8325
    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8326
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8327
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8328
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8329
    const-string/jumbo v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8330
    const-string/jumbo v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8331
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8332
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8333
    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8334
    const-string/jumbo v0, " mRingHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8335
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8336
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8337
    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8338
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8339
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8340
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8341
    const-string/jumbo v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8342
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8343
    const-string/jumbo v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8344
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8345
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8346
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8347
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8348
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8349
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8350
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    if-eqz v0, :cond_14

    .line 8352
    :cond_3
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8353
    const-string/jumbo v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8354
    const-string/jumbo v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8355
    const-string/jumbo v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8357
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8358
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8359
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8360
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8361
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8362
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8363
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8364
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8365
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8366
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8367
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8368
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8369
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8370
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8371
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8372
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8373
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8374
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8375
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8376
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8377
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8378
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8379
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8380
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8381
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8382
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8383
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8384
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8385
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8386
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8387
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8388
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8389
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8390
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVoiceContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8391
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8392
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8393
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8394
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8395
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8396
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8397
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8398
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8399
    const-string/jumbo v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8400
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8401
    const-string/jumbo v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8402
    const-string/jumbo v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8403
    const-string/jumbo v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8404
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    .line 8405
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8406
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8408
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    .line 8409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8410
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8412
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    .line 8413
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8414
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8415
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8417
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 8418
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8419
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8421
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 8422
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8423
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8425
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_a

    .line 8426
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8429
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    .line 8430
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8431
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8433
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    .line 8434
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8435
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8437
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_d

    .line 8438
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8439
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8441
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_e

    .line 8442
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8443
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8444
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8446
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8447
    const-string/jumbo v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8448
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8449
    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8450
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8451
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8452
    const-string/jumbo v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8453
    const-string/jumbo v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8454
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8455
    const-string/jumbo v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8456
    const-string/jumbo v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8457
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8458
    const-string/jumbo v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8459
    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8460
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8461
    const-string/jumbo v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8462
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8463
    const-string/jumbo v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8464
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8465
    const-string/jumbo v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8466
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8468
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8469
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8470
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8471
    invoke-static {p1, p2}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8473
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_f

    .line 8474
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8476
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_10

    .line 8477
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8479
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_11

    .line 8480
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8482
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_12

    .line 8483
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8290
    :cond_12
    return-void

    .line 8299
    :cond_13
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 8351
    :cond_14
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    goto/16 :goto_1
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 7124
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7125
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 7123
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 7672
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 7673
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 7674
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 7671
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 7132
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7133
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 7131
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 5423
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 12

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5581
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 5582
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 5583
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v5

    .line 5581
    if-eqz v5, :cond_0

    .line 5587
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5588
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5589
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5592
    :cond_0
    const/4 v0, 0x0

    .line 5593
    .local v0, "changes":I
    const/4 v4, 0x0

    .line 5595
    .local v4, "topIsFullscreen":Z
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_c

    .line 5596
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5603
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-nez v5, :cond_d

    .line 5604
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 5605
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v5, :cond_1

    .line 5606
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 5607
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5616
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_6

    .line 5620
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v5, :cond_2

    .line 5621
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_e

    .line 5620
    :cond_2
    const/4 v3, 0x0

    .line 5623
    .local v3, "shouldBeTransparent":Z
    :goto_2
    if-nez v3, :cond_10

    .line 5624
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    .line 5628
    :cond_3
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v5, :cond_12

    .line 5630
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5631
    const/4 v0, 0x1

    .line 5634
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    .line 5636
    .end local v4    # "topIsFullscreen":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5637
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 5638
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5637
    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    .line 5674
    .end local v3    # "shouldBeTransparent":Z
    :cond_6
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v5, v4, :cond_8

    .line 5675
    if-nez v4, :cond_7

    .line 5677
    or-int/lit8 v0, v0, 0x1

    .line 5679
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 5684
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_a

    .line 5687
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_17

    .line 5702
    :cond_9
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_19

    .line 5703
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5704
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5705
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5706
    or-int/lit8 v0, v0, 0x7

    .line 5738
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v5

    const v6, -0x3fff7ffa

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    .line 5741
    or-int/lit8 v0, v0, 0x1

    .line 5745
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5746
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateEdgeGestureListenerState()V

    .line 5747
    return v0

    .line 5597
    .restart local v4    # "topIsFullscreen":Z
    :cond_c
    const/4 v2, 0x0

    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_0

    .line 5610
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v5, :cond_1

    .line 5611
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 5612
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 5622
    :cond_e
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_f

    const/4 v3, 0x0

    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    .end local v3    # "shouldBeTransparent":Z
    :cond_f
    const/4 v3, 0x1

    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    .line 5625
    :cond_10
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5626
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto/16 :goto_3

    .line 5634
    :cond_11
    const/4 v4, 0x0

    goto :goto_4

    .line 5640
    :cond_12
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_6

    .line 5641
    invoke-static {v10, v2}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 5648
    .local v1, "fl":I
    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_13

    .line 5649
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_14

    const/4 v4, 0x1

    .line 5654
    :goto_7
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 5655
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5656
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 5648
    :cond_13
    const/4 v4, 0x1

    goto :goto_7

    .line 5649
    :cond_14
    const/4 v4, 0x0

    goto :goto_7

    .line 5658
    :cond_15
    if-eqz v4, :cond_16

    .line 5660
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5661
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 5667
    :cond_16
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5668
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 5688
    .end local v1    # "fl":I
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "topIsFullscreen":Z
    :cond_17
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5689
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5690
    or-int/lit8 v0, v0, 0x7

    .line 5694
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5695
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$23;

    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 5710
    :cond_19
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v5, :cond_1b

    .line 5711
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5712
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5713
    or-int/lit8 v0, v0, 0x7

    .line 5717
    :cond_1a
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v5, v9, :cond_a

    .line 5719
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$24;

    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$24;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 5727
    :cond_1b
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5728
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    .line 5729
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5730
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5731
    or-int/lit8 v0, v0, 0x7

    goto/16 :goto_6
.end method

.method public finishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 6892
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6894
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_timeout"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6898
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6899
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 6900
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6901
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6902
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6904
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(I)V

    .line 6891
    :cond_0
    return-void

    .line 6898
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finishedWakingUp()V
    .locals 0

    .prologue
    .line 6934
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 5793
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5794
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5797
    const/4 v0, 0x1

    return v0

    .line 5799
    :cond_0
    return v2
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 3010
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 3001
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 4898
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4790
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4789
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    .prologue
    .line 8248
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInsetHintLw(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayRotation"    # I
    .param p3, "outContentInsets"    # Landroid/graphics/Rect;
    .param p4, "outStableInsets"    # Landroid/graphics/Rect;
    .param p5, "outOutsets"    # Landroid/graphics/Rect;

    .prologue
    .line 4422
    const/4 v8, 0x0

    invoke-static {v8, p1}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 4423
    .local v3, "fl":I
    const/4 v8, 0x0

    invoke-static {v8, p1}, Landroid/view/WindowManagerPolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 4424
    .local v6, "sysuiVis":I
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v5, v6, v8

    .line 4426
    .local v5, "systemUiVisibility":I
    if-eqz p5, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v7

    .line 4427
    :goto_0
    if-eqz v7, :cond_0

    .line 4428
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v4

    .line 4429
    .local v4, "outset":I
    if-lez v4, :cond_0

    .line 4430
    if-nez p2, :cond_2

    .line 4431
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 4442
    .end local v4    # "outset":I
    :cond_0
    :goto_1
    const v8, 0x10100

    and-int/2addr v8, v3

    .line 4443
    const v9, 0x10100

    .line 4442
    if-ne v8, v9, :cond_b

    .line 4445
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4446
    and-int/lit16 v8, v5, 0x200

    if-eqz v8, :cond_5

    .line 4447
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v2, v8, v9

    .line 4448
    .local v2, "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v1, v8, v9

    .line 4453
    .local v1, "availBottom":I
    :goto_2
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_7

    .line 4454
    and-int/lit16 v8, v3, 0x400

    if-eqz v8, :cond_6

    .line 4455
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    .line 4456
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v10, v2, v10

    .line 4457
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v11, v1, v11

    .line 4455
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 4473
    :goto_3
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 4474
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v11, v1, v11

    .line 4473
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 4475
    return-void

    .line 4426
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_1
    const/4 v7, 0x0

    .local v7, "useOutsets":Z
    goto :goto_0

    .line 4432
    .end local v7    # "useOutsets":Z
    .restart local v4    # "outset":I
    :cond_2
    const/4 v8, 0x1

    if-ne p2, v8, :cond_3

    .line 4433
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4434
    :cond_3
    const/4 v8, 0x2

    if-ne p2, v8, :cond_4

    .line 4435
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 4436
    :cond_4
    const/4 v8, 0x3

    if-ne p2, v8, :cond_0

    .line 4437
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 4450
    .end local v4    # "outset":I
    :cond_5
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v2, v8, v9

    .line 4451
    .restart local v2    # "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v1, v8, v9

    .restart local v1    # "availBottom":I
    goto :goto_2

    .line 4459
    :cond_6
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 4460
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v11, v1, v11

    .line 4459
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 4462
    :cond_7
    and-int/lit16 v8, v3, 0x400

    if-nez v8, :cond_8

    const/high16 v8, 0x2000000

    and-int/2addr v8, v3

    if-eqz v8, :cond_9

    .line 4463
    :cond_8
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 4464
    :cond_9
    and-int/lit16 v8, v5, 0x404

    if-nez v8, :cond_a

    .line 4466
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 4467
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v11, v1, v11

    .line 4466
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 4469
    :cond_a
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 4470
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v11, v1, v11

    .line 4469
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 4477
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 4478
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 4421
    return-void
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2972
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2989
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2992
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    .line 2993
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int v0, p2, v0

    return v0

    .line 2996
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2977
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2980
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 2981
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int v0, p1, v0

    return v0

    .line 2984
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 1159
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1158
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .prologue
    .line 4777
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4778
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 4781
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4782
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 4785
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7424
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7425
    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, -0x2

    .line 7424
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    .line 7427
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method goHome()Z
    .locals 19

    .prologue
    .line 7835
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7836
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Not going home because user setup is in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    const/4 v1, 0x0

    return v1

    .line 7851
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 7853
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7870
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 7871
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 7872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 7871
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7873
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 7874
    const/4 v13, 0x1

    .line 7875
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 7870
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v18

    .line 7876
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    .line 7877
    const/4 v1, 0x0

    return v1

    .line 7855
    .end local v18    # "result":I
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 7856
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 7857
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 7858
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 7859
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 7860
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7862
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7863
    const/4 v9, 0x1

    .line 7864
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    .line 7859
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 7865
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 7866
    const/4 v1, 0x0

    return v1

    .line 7879
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    .line 7883
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public hasHwKeysEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 8215
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8216
    const-string/jumbo v2, "enable_hw_keys"

    const/4 v3, -0x2

    .line 8214
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasHwKeysEnabled:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 8223
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 8228
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasPermanentMenuKey:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 7566
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7565
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 7164
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7165
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1808
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    .line 1810
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1811
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1812
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1813
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1814
    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1815
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1819
    new-instance v2, Lcom/android/server/policy/OPGesturesListener;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/OPGesturesListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/OPGesturesListener$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOPGestures:Lcom/android/server/policy/OPGesturesListener;

    .line 1830
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1833
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1834
    const v3, 0x11200ae

    .line 1833
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 1837
    .local v10, "burnInProtectionEnabled":Z
    const-string/jumbo v2, "persist.debug.force_burn_in"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1838
    .local v9, "burnInProtectionDevMode":Z
    if-nez v10, :cond_0

    if-eqz v9, :cond_1

    .line 1844
    :cond_0
    if-eqz v9, :cond_6

    .line 1845
    const/4 v4, -0x8

    .line 1846
    .local v4, "minHorizontal":I
    const/16 v5, 0x8

    .line 1847
    .local v5, "maxHorizontal":I
    const/4 v6, -0x8

    .line 1848
    .local v6, "minVertical":I
    const/4 v7, -0x4

    .line 1849
    .local v7, "maxVertical":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v8, 0x6

    .line 1863
    .local v8, "maxRadius":I
    :goto_0
    new-instance v2, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 1867
    .end local v4    # "minHorizontal":I
    .end local v5    # "maxHorizontal":I
    .end local v6    # "minVertical":I
    .end local v7    # "maxVertical":I
    .end local v8    # "maxRadius":I
    :cond_1
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1868
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 1869
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    .line 1871
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1875
    :goto_1
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1877
    new-instance v2, Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 1878
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1879
    const v3, 0x10e004d

    .line 1878
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 1880
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1884
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.CAR_DOCK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1888
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DESK_DOCK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1893
    const-string/jumbo v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1895
    const-string/jumbo v3, "PhoneWindowManager.mBroadcastWakeLock"

    .line 1894
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1897
    const-string/jumbo v3, "PhoneWindowManager.mPowerKeyWakeLock"

    .line 1896
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1898
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1900
    const v3, 0x112003c

    .line 1899
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    .line 1902
    const v2, 0x10e0045

    .line 1901
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .line 1904
    const v2, 0x10e004a

    .line 1903
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .line 1906
    const v2, 0x10e0048

    .line 1905
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .line 1908
    const v2, 0x10e004c

    .line 1907
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1910
    const v3, 0x1120042

    .line 1909
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1912
    const v3, 0x1120040

    .line 1911
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1914
    const v3, 0x10e0046

    .line 1913
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1916
    const v3, 0x10e0047

    .line 1915
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1918
    const v3, 0x112003f

    .line 1917
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1920
    const v3, 0x1120050

    .line 1919
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1923
    const v3, 0x1120034

    .line 1922
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 1924
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v2, :cond_7

    .line 1925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1926
    const v3, 0x1120033

    .line 1925
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1924
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1928
    const v3, 0x1120035

    .line 1927
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1930
    const v3, 0x1120036

    .line 1929
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1932
    const v3, 0x1120032

    .line 1931
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 1933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1934
    const v3, 0x1120037

    .line 1933
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1936
    const v3, 0x1120031

    .line 1935
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 1938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1939
    const v3, 0x112003a

    .line 1938
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1942
    const v3, 0x112003b

    .line 1941
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1945
    const v3, 0x10e0050

    .line 1944
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1947
    const v3, 0x10e004f

    .line 1946
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1949
    const v3, 0x10e0051

    .line 1948
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1951
    const v3, 0x10e0052

    .line 1950
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1953
    const v3, 0x10e0053

    .line 1952
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 1957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1958
    const v3, 0x10e0064

    .line 1957
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceHardwareKeys:I

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1960
    const v3, 0x11200bc

    .line 1959
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasRemovableLid:Z

    .line 1962
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateKeyAssignments()V

    .line 1965
    const-string/jumbo v2, "accessibility"

    .line 1964
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1968
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 1969
    .local v16, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1970
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1971
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1972
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1973
    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v17

    .line 1975
    .local v17, "intent":Landroid/content/Intent;
    if-eqz v17, :cond_2

    .line 1977
    const-string/jumbo v2, "android.intent.extra.DOCK_STATE"

    .line 1978
    const/4 v3, 0x0

    .line 1977
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 1982
    :cond_2
    new-instance v16, Landroid/content/IntentFilter;

    .end local v16    # "filter":Landroid/content/IntentFilter;
    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 1983
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.DREAMING_STARTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1984
    const-string/jumbo v2, "android.intent.action.DREAMING_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1988
    new-instance v16, Landroid/content/IntentFilter;

    .end local v16    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1989
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1992
    new-instance v16, Landroid/content/IntentFilter;

    .end local v16    # "filter":Landroid/content/IntentFilter;
    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 1993
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "action_handler_show_power_menu"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1994
    const-string/jumbo v2, "action_handler_screenshot"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1995
    const-string/jumbo v2, "action_handler_toggle_screenrecord"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDUReceiver:Lcom/android/internal/utils/du/DUSystemReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1999
    new-instance v2, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 2000
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1999
    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 2057
    new-instance v2, Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2060
    const-string/jumbo v2, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2063
    new-instance v21, Landroid/content/IntentFilter;

    const-string/jumbo v2, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2065
    .local v21, "wifiDisplayFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 2064
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v22

    .line 2066
    .local v22, "wifidisplayIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2067
    const v3, 0x1070022

    .line 2066
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2069
    const v3, 0x1070023

    .line 2068
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2071
    const v3, 0x1070024

    .line 2070
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2073
    const v3, 0x1070025

    .line 2072
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2075
    const v3, 0x1070026

    .line 2074
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2077
    const v3, 0x1070027

    .line 2076
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2079
    const v3, 0x1070028

    .line 2078
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2081
    const v3, 0x107002a

    .line 2080
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    .line 2083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2084
    const v3, 0x112002f

    .line 2083
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2086
    const v3, 0x11200c8

    .line 2085
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordEnabled:Z

    .line 2088
    new-instance v2, Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2095
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2096
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2099
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 2100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    move-result-object v3

    .line 2099
    invoke-virtual {v2, v3}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2103
    const v3, 0x10400cc

    .line 2102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2105
    .local v13, "deviceKeyHandlerLib":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2106
    const v3, 0x10400cd

    .line 2105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2108
    .local v12, "deviceKeyHandlerClass":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1807
    :cond_4
    :goto_4
    return-void

    .line 1849
    .end local v12    # "deviceKeyHandlerClass":Ljava/lang/String;
    .end local v13    # "deviceKeyHandlerLib":Ljava/lang/String;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .end local v22    # "wifidisplayIntent":Landroid/content/Intent;
    .restart local v4    # "minHorizontal":I
    .restart local v5    # "maxHorizontal":I
    .restart local v6    # "minVertical":I
    .restart local v7    # "maxVertical":I
    :cond_5
    const/4 v8, -0x1

    .restart local v8    # "maxRadius":I
    goto/16 :goto_0

    .line 1851
    .end local v4    # "minHorizontal":I
    .end local v5    # "maxHorizontal":I
    .end local v6    # "minVertical":I
    .end local v7    # "maxVertical":I
    .end local v8    # "maxRadius":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1853
    .local v20, "resources":Landroid/content/res/Resources;
    const v2, 0x10e00a2

    .line 1852
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1855
    .restart local v4    # "minHorizontal":I
    const v2, 0x10e00a3

    .line 1854
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1857
    .restart local v5    # "maxHorizontal":I
    const v2, 0x10e00a4

    .line 1856
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1859
    .restart local v6    # "minVertical":I
    const v2, 0x10e00a5

    .line 1858
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1861
    .restart local v7    # "maxVertical":I
    const v2, 0x10e00a1

    .line 1860
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .restart local v8    # "maxRadius":I
    goto/16 :goto_0

    .line 1924
    .end local v4    # "minHorizontal":I
    .end local v5    # "maxHorizontal":I
    .end local v6    # "minVertical":I
    .end local v7    # "maxVertical":I
    .end local v8    # "maxRadius":I
    .end local v20    # "resources":Landroid/content/res/Resources;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1955
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2109
    .restart local v12    # "deviceKeyHandlerClass":Ljava/lang/String;
    .restart local v13    # "deviceKeyHandlerLib":Ljava/lang/String;
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v21    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .restart local v22    # "wifidisplayIntent":Landroid/content/Intent;
    :cond_9
    new-instance v19, Ldalvik/system/DexClassLoader;

    .line 2110
    new-instance v2, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2112
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2111
    const/16 v23, 0x0

    .line 2109
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v2, v1, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2114
    .local v19, "loader":Ldalvik/system/DexClassLoader;
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 2115
    .local v18, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/16 v23, 0x0

    aput-object v3, v2, v23

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 2116
    .local v11, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v23, 0x0

    aput-object v3, v2, v23

    .line 2116
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/DeviceKeyHandler;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 2119
    .end local v11    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v18    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v14

    .line 2120
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not instantiate device key handler "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2121
    const-string/jumbo v23, " from class "

    .line 2120
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1872
    .end local v12    # "deviceKeyHandlerClass":Ljava/lang/String;
    .end local v13    # "deviceKeyHandlerLib":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "loader":Ldalvik/system/DexClassLoader;
    .end local v21    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .end local v22    # "wifidisplayIntent":Landroid/content/Intent;
    :catch_1
    move-exception v15

    .local v15, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5858
    const/4 v5, 0x0

    .line 5860
    .local v5, "plugged":Z
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5861
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 5863
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    .line 5864
    .local v3, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5866
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5867
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    :try_start_1
    new-array v0, v8, [C

    .line 5868
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 5869
    .local v4, "n":I
    if-le v4, v10, :cond_0

    .line 5870
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v11, v4, -0x1

    const/4 v12, 0x0

    invoke-direct {v8, v0, v12, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    .line 5877
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 5879
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5887
    .end local v0    # "buf":[C
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5888
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 5857
    return-void

    .line 5870
    .restart local v0    # "buf":[C
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 5880
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1

    .line 5874
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 5875
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5877
    if-eqz v6, :cond_1

    .line 5879
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5880
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 5872
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 5873
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5877
    if-eqz v6, :cond_1

    .line 5879
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 5880
    :catch_4
    move-exception v1

    goto :goto_1

    .line 5876
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 5877
    :goto_6
    if-eqz v6, :cond_3

    .line 5879
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5876
    :cond_3
    :goto_7
    throw v8

    .line 5880
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_7

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_4
    move v8, v10

    .line 5887
    goto :goto_2

    :cond_5
    move v9, v10

    .line 5888
    goto :goto_3

    .line 5876
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 5872
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 5874
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 49
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3456
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v29

    .line 3457
    .local v29, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v37

    .line 3458
    .local v37, "scanCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v36

    .line 3459
    .local v36, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v32

    .line 3460
    .local v32, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v25

    .line 3461
    .local v25, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v21, 0x1

    .line 3462
    .local v21, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v16

    .line 3463
    .local v16, "canceled":Z
    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_3

    const/16 v30, 0x1

    .line 3464
    .local v30, "longPress":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    const/16 v47, 0x1

    .line 3465
    .local v47, "virtualKey":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v28

    .line 3476
    .local v28, "keyCode":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v4, :cond_6

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_6

    .line 3477
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v4, :cond_5

    .line 3485
    :cond_0
    const/16 v4, 0x19

    move/from16 v0, v28

    if-ne v0, v4, :cond_6

    .line 3486
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3485
    if-eqz v4, :cond_6

    .line 3487
    if-nez v21, :cond_1

    .line 3488
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3490
    :cond_1
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3461
    .end local v16    # "canceled":Z
    .end local v21    # "down":Z
    .end local v28    # "keyCode":I
    .end local v30    # "longPress":Z
    .end local v47    # "virtualKey":Z
    :cond_2
    const/16 v21, 0x0

    .restart local v21    # "down":Z
    goto :goto_0

    .line 3463
    .restart local v16    # "canceled":Z
    :cond_3
    const/16 v30, 0x0

    .restart local v30    # "longPress":Z
    goto :goto_1

    .line 3464
    :cond_4
    const/16 v47, 0x0

    .restart local v47    # "virtualKey":Z
    goto :goto_2

    .line 3478
    .restart local v28    # "keyCode":I
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3479
    .local v34, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 3480
    const-wide/16 v8, 0x96

    .line 3479
    add-long v44, v6, v8

    .line 3481
    .local v44, "timeoutTime":J
    cmp-long v4, v34, v44

    if-gez v4, :cond_0

    .line 3482
    sub-long v6, v44, v34

    return-wide v6

    .line 3497
    .end local v34    # "now":J
    .end local v44    # "timeoutTime":J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordEnabled:Z

    if-eqz v4, :cond_a

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_a

    .line 3498
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v4, :cond_9

    .line 3505
    :cond_7
    const/16 v4, 0x18

    move/from16 v0, v28

    if-ne v0, v4, :cond_a

    .line 3506
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordVolumeUpKeyConsumed:Z

    .line 3505
    if-eqz v4, :cond_a

    .line 3507
    if-nez v21, :cond_8

    .line 3508
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordVolumeUpKeyConsumed:Z

    .line 3510
    :cond_8
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3499
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3500
    .restart local v34    # "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    const-wide/16 v8, 0x96

    add-long v44, v6, v8

    .line 3501
    .restart local v44    # "timeoutTime":J
    cmp-long v4, v34, v44

    if-gez v4, :cond_7

    .line 3502
    sub-long v6, v44, v34

    return-wide v6

    .line 3516
    .end local v34    # "now":J
    .end local v44    # "timeoutTime":J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_b

    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3520
    :cond_b
    :goto_3
    const/4 v4, 0x4

    move/from16 v0, v28

    if-ne v0, v4, :cond_c

    if-eqz v21, :cond_f

    .line 3528
    :cond_c
    :goto_4
    const/4 v4, 0x3

    move/from16 v0, v28

    if-ne v0, v4, :cond_24

    .line 3531
    if-eqz v37, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3535
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_11

    .line 3536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3537
    const/high16 v6, 0x10000000

    .line 3536
    and-int/2addr v4, v6

    if-eqz v4, :cond_11

    .line 3538
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 3535
    if-eqz v4, :cond_11

    .line 3539
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3517
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_3

    .line 3521
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 3532
    :cond_10
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring Home Key: we have hw keys disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3543
    :cond_11
    if-nez v21, :cond_18

    .line 3544
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_12

    .line 3545
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3548
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3549
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_13

    .line 3550
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 3551
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3554
    :cond_13
    if-eqz v16, :cond_14

    .line 3555
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3562
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v42

    .line 3563
    .local v42, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v42, :cond_16

    invoke-virtual/range {v42 .. v42}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3564
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRingHomeBehavior:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15

    .line 3566
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Answering with HOME button."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    invoke-virtual/range {v42 .. v42}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 3568
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3570
    :cond_15
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3576
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v4, :cond_17

    .line 3577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3578
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3580
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    .line 3579
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3581
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3584
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    .line 3585
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3590
    .end local v42    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_18
    if-eqz p1, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 3591
    :goto_5
    if-eqz v13, :cond_1d

    .line 3592
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v43, v0

    .line 3593
    .local v43, "type":I
    const/16 v4, 0x7ed

    move/from16 v0, v43

    if-eq v0, v4, :cond_19

    .line 3594
    const/16 v4, 0x7d9

    move/from16 v0, v43

    if-ne v0, v4, :cond_1b

    .line 3597
    :cond_19
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3590
    .end local v43    # "type":I
    :cond_1a
    const/4 v13, 0x0

    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_5

    .line 3595
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v43    # "type":I
    :cond_1b
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_19

    .line 3599
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v46, v0

    .line 3600
    .local v46, "typeCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_6
    move/from16 v0, v26

    move/from16 v1, v46

    if-ge v0, v1, :cond_1d

    .line 3601
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v26

    move/from16 v0, v43

    if-ne v0, v4, :cond_1c

    .line 3603
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3600
    :cond_1c
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 3609
    .end local v26    # "i":I
    .end local v43    # "type":I
    .end local v46    # "typeCount":I
    :cond_1d
    if-nez v36, :cond_22

    .line 3610
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3611
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_20

    .line 3612
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3614
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 3615
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1f

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 3632
    :cond_1e
    :goto_8
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3615
    :cond_1f
    const/4 v4, 0x0

    goto :goto_7

    .line 3616
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_21

    .line 3617
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1e

    .line 3618
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_8

    .line 3620
    :cond_22
    if-eqz v30, :cond_1e

    .line 3621
    if-nez v29, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-nez v4, :cond_1e

    .line 3622
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v4, :cond_1e

    .line 3623
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_23

    .line 3624
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3626
    :cond_23
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3627
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3628
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 3629
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    goto :goto_8

    .line 3633
    :cond_24
    const/16 v4, 0x52

    move/from16 v0, v28

    if-ne v0, v4, :cond_31

    .line 3636
    if-eqz v37, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3642
    :cond_25
    const/16 v18, 0x1

    .line 3643
    .local v18, "chordBug":I
    if-nez v47, :cond_26

    if-eqz v29, :cond_28

    .line 3645
    :cond_26
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3637
    .end local v18    # "chordBug":I
    :cond_27
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring Menu Key: we have hw keys disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3648
    .restart local v18    # "chordBug":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_29

    .line 3649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3650
    const/high16 v6, 0x10000000

    .line 3649
    and-int/2addr v4, v6

    if-eqz v4, :cond_29

    .line 3651
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 3648
    if-eqz v4, :cond_29

    .line 3652
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3655
    :cond_29
    if-eqz v21, :cond_2e

    .line 3656
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2a

    .line 3657
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2b

    .line 3658
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 3660
    :cond_2b
    if-nez v36, :cond_2c

    .line 3661
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    .line 3662
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_2e

    and-int/lit8 v4, v32, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2e

    .line 3663
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3664
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 3665
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3664
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3666
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3683
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2c
    if-eqz v30, :cond_2e

    .line 3684
    if-nez v29, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-eqz v4, :cond_2e

    .line 3685
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2d

    .line 3686
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3688
    :cond_2d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3689
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 3690
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    .line 3691
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3695
    :cond_2e
    if-nez v21, :cond_30

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    if-eqz v4, :cond_30

    .line 3696
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2f

    .line 3697
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3699
    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMenuPressed:Z

    .line 3700
    if-nez v16, :cond_30

    .line 3701
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnMenuBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 3704
    :cond_30
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3705
    .end local v18    # "chordBug":I
    :cond_31
    const/16 v4, 0x54

    move/from16 v0, v28

    if-ne v0, v4, :cond_36

    .line 3708
    if-eqz v37, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3713
    :cond_32
    if-eqz v21, :cond_35

    .line 3714
    if-nez v36, :cond_33

    .line 3715
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3716
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3725
    :cond_33
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3709
    :cond_34
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring Search Key: we have hw keys disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3719
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3720
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v4, :cond_33

    .line 3721
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3722
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3726
    :cond_36
    const/16 v4, 0xbb

    move/from16 v0, v28

    if-ne v0, v4, :cond_41

    .line 3728
    if-eqz v37, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3733
    :cond_37
    if-nez v29, :cond_3a

    .line 3734
    if-eqz v21, :cond_3e

    .line 3735
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_38

    .line 3736
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_39

    .line 3737
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 3739
    :cond_39
    if-nez v36, :cond_3c

    .line 3740
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    .line 3764
    :cond_3a
    :goto_9
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3729
    :cond_3b
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring App Switch Key: we have hw keys disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3741
    :cond_3c
    if-eqz v30, :cond_3a

    .line 3742
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-eqz v4, :cond_3a

    .line 3743
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3d

    .line 3744
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3746
    :cond_3d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3747
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 3748
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_9

    .line 3752
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    if-eqz v4, :cond_3f

    .line 3753
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_9

    .line 3755
    :cond_3f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_40

    .line 3756
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3758
    :cond_40
    if-nez v16, :cond_3a

    .line 3759
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_9

    .line 3765
    :cond_41
    const/16 v4, 0x2a

    move/from16 v0, v28

    if-ne v0, v4, :cond_44

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 3766
    if-eqz v21, :cond_42

    .line 3767
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v38

    .line 3768
    .local v38, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v38, :cond_42

    .line 3770
    :try_start_0
    invoke-interface/range {v38 .. v38}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3903
    .end local v38    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_42
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_62

    .line 3904
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v27

    .line 3905
    .local v27, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v27 .. v28}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 3906
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3907
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3908
    if-eqz v21, :cond_43

    if-nez v36, :cond_43

    if-eqz v29, :cond_60

    .line 3924
    :cond_43
    :goto_b
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3771
    .end local v27    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v38    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    goto :goto_a

    .line 3776
    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v38    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_44
    const/16 v4, 0xdb

    move/from16 v0, v28

    if-ne v0, v4, :cond_4f

    .line 3779
    if-eqz v37, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3784
    :cond_45
    if-eqz v21, :cond_4c

    .line 3785
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_46

    .line 3786
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_47

    .line 3787
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 3789
    :cond_47
    if-nez v36, :cond_4a

    .line 3790
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3813
    :cond_48
    :goto_c
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3780
    :cond_49
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring Assist Key: we have hw keys disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3791
    :cond_4a
    if-eqz v30, :cond_48

    .line 3792
    if-nez v29, :cond_48

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    if-eqz v4, :cond_48

    .line 3793
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4b

    .line 3794
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3796
    :cond_4b
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3797
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 3798
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_c

    .line 3802
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_4d

    .line 3803
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_c

    .line 3805
    :cond_4d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4e

    .line 3806
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3808
    :cond_4e
    if-nez v16, :cond_48

    .line 3809
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPressOnAssistBehavior:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_c

    .line 3814
    :cond_4f
    const/16 v4, 0xe7

    move/from16 v0, v28

    if-ne v0, v4, :cond_52

    .line 3815
    if-nez v21, :cond_42

    .line 3817
    if-nez v29, :cond_50

    .line 3818
    new-instance v48, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3831
    .local v48, "voiceIntent":Landroid/content/Intent;
    :goto_d
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_a

    .line 3821
    .end local v48    # "voiceIntent":Landroid/content/Intent;
    :cond_50
    const-string/jumbo v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3820
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v19

    .line 3822
    .local v19, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v19, :cond_51

    .line 3824
    :try_start_1
    const-string/jumbo v4, "voice-search"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 3828
    :cond_51
    :goto_e
    new-instance v48, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3829
    .restart local v48    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    const/4 v6, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_d

    .line 3833
    .end local v19    # "dic":Landroid/os/IDeviceIdleController;
    .end local v48    # "voiceIntent":Landroid/content/Intent;
    :cond_52
    const/16 v4, 0x78

    move/from16 v0, v28

    if-ne v0, v4, :cond_54

    .line 3834
    if-eqz v21, :cond_53

    if-nez v36, :cond_53

    .line 3835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3837
    :cond_53
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3838
    :cond_54
    const/16 v4, 0xdd

    move/from16 v0, v28

    if-eq v0, v4, :cond_55

    .line 3839
    const/16 v4, 0xdc

    move/from16 v0, v28

    if-ne v0, v4, :cond_59

    .line 3840
    :cond_55
    if-eqz v21, :cond_57

    .line 3841
    const/16 v4, 0xdd

    move/from16 v0, v28

    if-ne v0, v4, :cond_58

    const/16 v20, 0x1

    .line 3845
    .local v20, "direction":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3846
    const-string/jumbo v6, "screen_brightness_mode"

    .line 3847
    const/4 v7, 0x0

    .line 3848
    const/4 v8, -0x3

    .line 3844
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 3849
    .local v14, "auto":I
    if-eqz v14, :cond_56

    .line 3850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3851
    const-string/jumbo v6, "screen_brightness_mode"

    .line 3852
    const/4 v7, 0x0

    .line 3853
    const/4 v8, -0x3

    .line 3850
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3856
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v33

    .line 3857
    .local v33, "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v31

    .line 3858
    .local v31, "max":I
    sub-int v4, v31, v33

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xa

    mul-int v41, v4, v20

    .line 3859
    .local v41, "step":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3860
    const-string/jumbo v6, "screen_brightness"

    .line 3861
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    .line 3862
    const/4 v8, -0x3

    .line 3859
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 3863
    .local v15, "brightness":I
    add-int v15, v15, v41

    .line 3865
    move/from16 v0, v31

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 3866
    move/from16 v0, v33

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 3868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3869
    const-string/jumbo v6, "screen_brightness"

    .line 3870
    const/4 v7, -0x3

    .line 3868
    invoke-static {v4, v6, v15, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3871
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3872
    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 3871
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3874
    .end local v14    # "auto":I
    .end local v15    # "brightness":I
    .end local v20    # "direction":I
    .end local v31    # "max":I
    .end local v33    # "min":I
    .end local v41    # "step":I
    :cond_57
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3841
    :cond_58
    const/16 v20, -0x1

    .restart local v20    # "direction":I
    goto/16 :goto_f

    .line 3875
    .end local v20    # "direction":I
    :cond_59
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3876
    if-eqz v21, :cond_5b

    .line 3877
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3881
    :cond_5a
    :goto_10
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3878
    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_5a

    .line 3879
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_10

    .line 3882
    :cond_5c
    const/4 v4, 0x4

    move/from16 v0, v28

    if-ne v0, v4, :cond_42

    .line 3885
    if-eqz v37, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3890
    :cond_5d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->unpinActivity(Z)Z

    move-result v4

    if-nez v4, :cond_5e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3891
    const-string/jumbo v6, "kill_app_longpress_back"

    const/4 v7, 0x0

    .line 3890
    invoke-static {v4, v6, v7}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3891
    const/4 v6, 0x1

    .line 3890
    if-ne v4, v6, :cond_42

    .line 3892
    :cond_5e
    if-eqz v21, :cond_42

    if-nez v36, :cond_42

    .line 3893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKillTimeout:I

    int-to-long v8, v7

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 3886
    :cond_5f
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring Back Key: we have hw keys disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3909
    .restart local v27    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v32

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v40

    .line 3910
    .local v40, "shortcutIntent":Landroid/content/Intent;
    if-eqz v40, :cond_61

    .line 3911
    const/high16 v4, 0x10000000

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3913
    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_b

    .line 3914
    :catch_1
    move-exception v24

    .line 3915
    .local v24, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3917
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 3920
    .end local v24    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_61
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3921
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3920
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3929
    .end local v27    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v40    # "shortcutIntent":Landroid/content/Intent;
    :cond_62
    if-eqz v21, :cond_63

    if-nez v36, :cond_63

    if-eqz v29, :cond_67

    .line 3951
    :cond_63
    if-eqz v21, :cond_64

    if-nez v36, :cond_64

    if-eqz v29, :cond_68

    .line 3968
    :cond_64
    if-eqz v21, :cond_6a

    if-nez v36, :cond_6a

    const/16 v4, 0x3d

    move/from16 v0, v28

    if-ne v0, v4, :cond_6a

    .line 3969
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_65

    if-eqz v29, :cond_69

    .line 3984
    :cond_65
    :goto_11
    if-eqz v21, :cond_6c

    if-nez v36, :cond_6c

    .line 3985
    const/16 v4, 0xcc

    move/from16 v0, v28

    if-eq v0, v4, :cond_66

    .line 3986
    const/16 v4, 0x3e

    move/from16 v0, v28

    if-ne v0, v4, :cond_6c

    .line 3987
    move/from16 v0, v32

    and-int/lit16 v4, v0, 0x7000

    if-eqz v4, :cond_6c

    .line 3988
    :cond_66
    move/from16 v0, v32

    and-int/lit16 v4, v0, 0xc1

    if-eqz v4, :cond_6b

    const/16 v20, -0x1

    .line 3989
    .restart local v20    # "direction":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move/from16 v0, v20

    invoke-interface {v4, v6, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3990
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3930
    .end local v20    # "direction":I
    :cond_67
    const/high16 v4, 0x10000

    and-int v4, v4, v32

    if-eqz v4, :cond_63

    .line 3931
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v27

    .line 3932
    .restart local v27    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v27 .. v28}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 3933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 3934
    const v6, -0x70001

    and-int v6, v6, v32

    .line 3933
    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v40

    .line 3936
    .restart local v40    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v40, :cond_63

    .line 3937
    const/high16 v4, 0x10000000

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3939
    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3945
    :goto_13
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3940
    :catch_2
    move-exception v24

    .line 3941
    .restart local v24    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3943
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3941
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 3952
    .end local v24    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v27    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v40    # "shortcutIntent":Landroid/content/Intent;
    :cond_68
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 3953
    .local v17, "category":Ljava/lang/String;
    if-eqz v17, :cond_64

    .line 3954
    const-string/jumbo v4, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3955
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3957
    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3963
    :goto_14
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3958
    :catch_3
    move-exception v24

    .line 3959
    .restart local v24    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3961
    const-string/jumbo v7, ", category="

    .line 3959
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 3969
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v17    # "category":Ljava/lang/String;
    .end local v24    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 3970
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v39, v0

    .line 3971
    .local v39, "shiftlessModifiers":I
    const/4 v4, 0x2

    move/from16 v0, v39

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 3972
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3973
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3974
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3977
    .end local v39    # "shiftlessModifiers":I
    :cond_6a
    if-nez v21, :cond_65

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_65

    .line 3978
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int v4, v4, v32

    if-nez v4, :cond_65

    .line 3979
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3980
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto/16 :goto_11

    .line 3988
    :cond_6b
    const/16 v20, 0x1

    .restart local v20    # "direction":I
    goto/16 :goto_12

    .line 3992
    .end local v20    # "direction":I
    :cond_6c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_6d

    if-eqz v21, :cond_6e

    .line 3999
    :cond_6d
    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 4000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 3999
    if-eqz v4, :cond_70

    .line 4001
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3993
    :cond_6e
    const/16 v4, 0xcc

    move/from16 v0, v28

    if-eq v0, v4, :cond_6f

    .line 3994
    const/16 v4, 0x3e

    move/from16 v0, v28

    if-ne v0, v4, :cond_6d

    .line 3995
    :cond_6f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3996
    const-wide/16 v6, -0x1

    return-wide v6

    .line 4005
    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    if-eqz v4, :cond_71

    .line 4008
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v4

    if-eqz v4, :cond_71

    .line 4009
    const-wide/16 v6, -0x1

    return-wide v6

    .line 4011
    :catch_4
    move-exception v23

    .line 4012
    .local v23, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Could not dispatch event to device key handler"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4017
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_71
    const/high16 v4, 0x10000

    and-int v4, v4, v32

    if-eqz v4, :cond_72

    .line 4018
    const-wide/16 v6, -0x1

    return-wide v6

    .line 4022
    :cond_72
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3825
    .restart local v19    # "dic":Landroid/os/IDeviceIdleController;
    :catch_5
    move-exception v22

    .restart local v22    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 28
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 6040
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-nez v5, :cond_0

    .line 6042
    const/4 v5, 0x0

    return v5

    .line 6045
    :cond_0
    const/high16 v5, 0x20000000

    and-int v5, v5, p2

    if-eqz v5, :cond_2

    const/4 v15, 0x1

    .line 6046
    .local v15, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v11, 0x1

    .line 6047
    .local v11, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 6048
    .local v4, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 6049
    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v25

    .line 6051
    .local v25, "scanCode":I
    const/high16 v5, 0x1000000

    and-int v5, v5, p2

    if-eqz v5, :cond_4

    const/16 v16, 0x1

    .line 6057
    .local v16, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v5, :cond_5

    const/16 v19, 0x0

    .line 6063
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    .line 6064
    if-eqz v25, :cond_1

    const/4 v5, 0x3

    move/from16 v0, v18

    if-ne v0, v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    if-eqz v5, :cond_7

    .line 6068
    :cond_1
    if-eqz v25, :cond_8

    const/16 v5, 0x52

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    .line 6069
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Ignoring Menu Key: we have hw keys disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    const/4 v5, 0x0

    return v5

    .line 6045
    .end local v4    # "canceled":Z
    .end local v11    # "down":Z
    .end local v15    # "interactive":Z
    .end local v16    # "isInjected":Z
    .end local v18    # "keyCode":I
    .end local v25    # "scanCode":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "interactive":Z
    goto :goto_0

    .line 6046
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "down":Z
    goto :goto_1

    .line 6051
    .restart local v4    # "canceled":Z
    .restart local v18    # "keyCode":I
    .restart local v25    # "scanCode":I
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "isInjected":Z
    goto :goto_2

    .line 6058
    :cond_5
    if-eqz v15, :cond_6

    .line 6059
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v19

    .local v19, "keyguardActive":Z
    goto :goto_3

    .line 6060
    .end local v19    # "keyguardActive":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v19

    .restart local v19    # "keyguardActive":Z
    goto :goto_3

    .line 6065
    .end local v19    # "keyguardActive":Z
    :cond_7
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Ignoring Home Key: we have hw keys and also home key wake disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    const/4 v5, 0x0

    return v5

    .line 6072
    :cond_8
    if-eqz v25, :cond_9

    const/4 v5, 0x4

    move/from16 v0, v18

    if-ne v0, v5, :cond_9

    .line 6073
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Ignoring Back Key: we have hw keys disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6074
    const/4 v5, 0x0

    return v5

    .line 6076
    :cond_9
    if-eqz v25, :cond_a

    const/16 v5, 0x54

    move/from16 v0, v18

    if-ne v0, v5, :cond_a

    .line 6077
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Ignoring Search Key: we have hw keys disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    const/4 v5, 0x0

    return v5

    .line 6080
    :cond_a
    if-eqz v25, :cond_b

    const/16 v5, 0xbb

    move/from16 v0, v18

    if-ne v0, v5, :cond_b

    .line 6081
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Ignoring App Switch Key: we have hw keys disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6082
    const/4 v5, 0x0

    return v5

    .line 6084
    :cond_b
    if-eqz v25, :cond_c

    const/16 v5, 0xdb

    move/from16 v0, v18

    if-ne v0, v5, :cond_c

    .line 6085
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Ignoring Assist Key: we have hw keys disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    const/4 v5, 0x0

    return v5

    .line 6098
    :cond_c
    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_10

    .line 6099
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v17

    .line 6100
    :goto_4
    if-nez v15, :cond_11

    if-eqz v16, :cond_d

    if-eqz v17, :cond_11

    .line 6105
    :cond_d
    if-nez v15, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 6110
    const/16 v24, 0x1

    .line 6111
    .local v24, "result":I
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyEnabled(I)Z

    move-result v17

    .line 6123
    :cond_e
    :goto_5
    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 6124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 6123
    if-eqz v5, :cond_15

    .line 6125
    if-eqz v17, :cond_f

    .line 6126
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 6127
    const-string/jumbo v9, "android.policy:KEY"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    .line 6126
    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;Z)Z

    .line 6129
    :cond_f
    return v24

    .line 6098
    .end local v24    # "result":I
    :cond_10
    const/16 v17, 0x1

    .local v17, "isWakeKey":Z
    goto :goto_4

    .line 6103
    .end local v17    # "isWakeKey":Z
    :cond_11
    const/16 v24, 0x1

    .line 6104
    .restart local v24    # "result":I
    const/16 v17, 0x0

    .line 6100
    .restart local v17    # "isWakeKey":Z
    goto :goto_5

    .line 6111
    .end local v17    # "isWakeKey":Z
    :cond_12
    const/16 v17, 0x0

    .restart local v17    # "isWakeKey":Z
    goto :goto_5

    .line 6115
    .end local v17    # "isWakeKey":Z
    .end local v24    # "result":I
    :cond_13
    const/16 v24, 0x0

    .line 6116
    .restart local v24    # "result":I
    if-eqz v17, :cond_e

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 6117
    :cond_14
    const/16 v17, 0x0

    .restart local v17    # "isWakeKey":Z
    goto :goto_5

    .line 6132
    .end local v17    # "isWakeKey":Z
    :cond_15
    if-eqz v11, :cond_17

    .line 6133
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_17

    .line 6134
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_16

    const/16 v27, 0x1

    .line 6137
    .local v27, "useHapticFeedback":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    if-eqz v5, :cond_18

    .line 6140
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_18

    .line 6141
    const/4 v5, 0x0

    return v5

    .line 6134
    .end local v27    # "useHapticFeedback":Z
    :cond_16
    const/16 v27, 0x0

    .restart local v27    # "useHapticFeedback":Z
    goto :goto_6

    .line 6132
    .end local v27    # "useHapticFeedback":Z
    :cond_17
    const/16 v27, 0x0

    .restart local v27    # "useHapticFeedback":Z
    goto :goto_6

    .line 6143
    :catch_0
    move-exception v12

    .line 6144
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Could not dispatch event to device key handler"

    invoke-static {v5, v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6149
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_18
    sparse-switch v18, :sswitch_data_0

    .line 6480
    :cond_19
    :goto_7
    if-eqz v27, :cond_1a

    .line 6481
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 6484
    :cond_1a
    if-eqz v17, :cond_1b

    .line 6485
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string/jumbo v9, "android.policy:KEY"

    .line 6486
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v10, 0xe0

    if-ne v5, v10, :cond_3d

    const/4 v10, 0x1

    :goto_8
    move-object/from16 v5, p0

    .line 6485
    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;Z)Z

    .line 6489
    :cond_1b
    return v24

    .line 6153
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-eqz v5, :cond_1c

    .line 6155
    and-int/lit8 v24, v24, -0x2

    .line 6159
    :cond_1c
    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-eqz v5, :cond_1d

    .line 6160
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeTriggered:Z

    goto :goto_7

    .line 6162
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeTriggered:Z

    if-eqz v5, :cond_1e

    if-eqz v11, :cond_21

    .line 6168
    :cond_1e
    const/16 v5, 0x19

    move/from16 v0, v18

    if-ne v0, v5, :cond_24

    .line 6169
    if-eqz v11, :cond_23

    .line 6170
    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v5, :cond_22

    .line 6201
    :cond_1f
    :goto_9
    if-eqz v11, :cond_27

    .line 6202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v26

    .line 6203
    .local v26, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v26, :cond_27

    .line 6204
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 6206
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeAnswer:Z

    if-eqz v5, :cond_20

    .line 6207
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 6215
    :cond_20
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6220
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 6224
    and-int/lit8 v24, v24, -0x2

    .line 6225
    goto :goto_7

    .line 6163
    .end local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_21
    and-int/lit8 v24, v24, -0x2

    .line 6164
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeTriggered:Z

    goto/16 :goto_7

    .line 6171
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_1f

    .line 6172
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6173
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 6174
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 6175
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6176
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 6177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    goto :goto_9

    .line 6180
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6181
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6182
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    goto :goto_9

    .line 6184
    :cond_24
    const/16 v5, 0x18

    move/from16 v0, v18

    if-ne v0, v5, :cond_1f

    .line 6185
    if-eqz v11, :cond_25

    .line 6186
    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v5, :cond_1f

    .line 6187
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_1f

    .line 6188
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6189
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 6190
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenrecordChordVolumeUpKeyConsumed:Z

    .line 6191
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6192
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6193
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenrecordChord()V

    goto/16 :goto_9

    .line 6196
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6197
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    goto/16 :goto_9

    .line 6227
    .restart local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_26
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 6228
    and-int/lit8 v5, v24, 0x1

    if-nez v5, :cond_27

    .line 6232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    .line 6233
    const/4 v6, 0x0

    .line 6232
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 6240
    .end local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_27
    and-int/lit8 v5, v24, 0x1

    if-nez v5, :cond_19

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez v5, :cond_19

    .line 6241
    const/16 v20, 0x0

    .line 6243
    .local v20, "mayChangeVolume":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 6244
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnMusicControls:Z

    if-eqz v5, :cond_2b

    const/16 v5, 0xa4

    move/from16 v0, v18

    if-eq v0, v5, :cond_2b

    .line 6246
    if-eqz v11, :cond_29

    .line 6247
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    .line 6249
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_28

    .line 6250
    const/16 v23, 0x57

    .line 6251
    .local v23, "newKeyCode":I
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->scheduleLongPressKeyEvent(Landroid/view/KeyEvent;I)V

    goto/16 :goto_7

    .line 6250
    .end local v23    # "newKeyCode":I
    :cond_28
    const/16 v23, 0x58

    .restart local v23    # "newKeyCode":I
    goto :goto_a

    .line 6255
    .end local v23    # "newKeyCode":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6257
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    if-nez v5, :cond_19

    .line 6261
    const/16 v20, 0x1

    .line 6270
    .end local v20    # "mayChangeVolume":Z
    :cond_2a
    :goto_b
    if-eqz v20, :cond_19

    .line 6271
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-eqz v5, :cond_2c

    .line 6272
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_7

    .line 6266
    .restart local v20    # "mayChangeVolume":Z
    :cond_2b
    move/from16 v20, v11

    .local v20, "mayChangeVolume":Z
    goto :goto_b

    .line 6280
    .end local v20    # "mayChangeVolume":Z
    :cond_2c
    new-instance v22, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 6281
    .local v22, "newEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    .line 6282
    const/4 v6, 0x1

    .line 6281
    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 6291
    .end local v22    # "newEvent":Landroid/view/KeyEvent;
    :sswitch_1
    if-eqz v11, :cond_19

    if-nez v15, :cond_19

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    if-eqz v5, :cond_19

    .line 6292
    const/16 v17, 0x1

    .restart local v17    # "isWakeKey":Z
    goto/16 :goto_7

    .line 6297
    .end local v17    # "isWakeKey":Z
    :sswitch_2
    if-eqz v11, :cond_2d

    if-eqz v15, :cond_2e

    .line 6299
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    .line 6300
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6299
    if-eqz v5, :cond_19

    .line 6300
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    .line 6299
    if-eqz v5, :cond_19

    .line 6302
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 6303
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    goto/16 :goto_7

    .line 6297
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraSleepOnRelease:Z

    if-eqz v5, :cond_2d

    .line 6298
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    goto/16 :goto_7

    .line 6308
    :sswitch_3
    if-eqz v11, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    if-eqz v5, :cond_2f

    .line 6309
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsFocusPressed:Z

    .line 6311
    :cond_2f
    if-eqz v11, :cond_30

    .line 6312
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    .line 6313
    const/16 v5, 0x1b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->scheduleLongPressKeyEvent(Landroid/view/KeyEvent;I)V

    goto/16 :goto_7

    .line 6317
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6319
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLaunch:Z

    if-eqz v5, :cond_19

    .line 6321
    if-eqz v19, :cond_31

    .line 6322
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6326
    .local v14, "intent":Landroid/content/Intent;
    :goto_c
    const/16 v17, 0x1

    .line 6327
    .restart local v17    # "isWakeKey":Z
    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    .line 6324
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isWakeKey":Z
    :cond_31
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14    # "intent":Landroid/content/Intent;
    goto :goto_c

    .line 6333
    .end local v14    # "intent":Landroid/content/Intent;
    :sswitch_4
    and-int/lit8 v24, v24, -0x2

    .line 6334
    if-eqz v11, :cond_35

    .line 6335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v26

    .line 6336
    .restart local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v13, 0x0

    .line 6337
    .local v13, "hungUp":Z
    if-eqz v26, :cond_32

    .line 6338
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v13

    .line 6340
    .end local v13    # "hungUp":Z
    :cond_32
    if-eqz v15, :cond_33

    if-eqz v13, :cond_34

    .line 6345
    :cond_33
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto/16 :goto_7

    .line 6341
    :cond_34
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 6342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 6343
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 6342
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 6348
    .end local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v5, :cond_19

    .line 6349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6350
    if-nez v4, :cond_19

    .line 6351
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_36

    .line 6353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v5

    if-nez v5, :cond_19

    .line 6357
    :cond_36
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_19

    .line 6359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 6360
    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 6359
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 6361
    const/16 v17, 0x0

    .restart local v17    # "isWakeKey":Z
    goto/16 :goto_7

    .line 6370
    .end local v17    # "isWakeKey":Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_37

    .line 6371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6372
    const/high16 v6, 0x30000000

    .line 6371
    and-int/2addr v5, v6

    if-eqz v5, :cond_37

    .line 6374
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6370
    if-eqz v5, :cond_37

    .line 6375
    return v24

    .line 6377
    :cond_37
    and-int/lit8 v24, v24, -0x2

    .line 6378
    const/16 v17, 0x0

    .line 6379
    .restart local v17    # "isWakeKey":Z
    if-eqz v11, :cond_38

    .line 6380
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 6382
    :cond_38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v4}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_7

    .line 6388
    .end local v17    # "isWakeKey":Z
    :sswitch_6
    and-int/lit8 v24, v24, -0x2

    .line 6389
    const/16 v17, 0x0

    .line 6390
    .restart local v17    # "isWakeKey":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-nez v5, :cond_39

    .line 6391
    const/16 v27, 0x0

    .line 6393
    :cond_39
    if-eqz v11, :cond_3a

    .line 6394
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    goto/16 :goto_7

    .line 6396
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_7

    .line 6402
    .end local v17    # "isWakeKey":Z
    :sswitch_7
    and-int/lit8 v24, v24, -0x2

    .line 6403
    const/16 v17, 0x0

    .line 6404
    .restart local v17    # "isWakeKey":Z
    if-nez v11, :cond_19

    .line 6405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    goto/16 :goto_7

    .line 6411
    .end local v17    # "isWakeKey":Z
    :sswitch_8
    and-int/lit8 v24, v24, -0x2

    .line 6412
    const/16 v17, 0x1

    .line 6413
    .restart local v17    # "isWakeKey":Z
    goto/16 :goto_7

    .line 6428
    .end local v17    # "isWakeKey":Z
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 6431
    and-int/lit8 v24, v24, -0x2

    .line 6433
    :cond_3b
    and-int/lit8 v5, v24, 0x1

    if-nez v5, :cond_19

    .line 6439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6440
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 6441
    new-instance v6, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 6440
    const/4 v7, 0x3

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 6442
    .local v21, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6443
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 6449
    .end local v21    # "msg":Landroid/os/Message;
    :sswitch_a
    if-eqz v11, :cond_19

    .line 6450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v26

    .line 6451
    .restart local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v26, :cond_19

    .line 6452
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 6453
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6455
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 6459
    and-int/lit8 v24, v24, -0x2

    goto/16 :goto_7

    .line 6470
    .end local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_b
    and-int/lit8 v5, v24, 0x1

    if-nez v5, :cond_19

    if-nez v11, :cond_19

    .line 6471
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6472
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 6473
    if-eqz v19, :cond_3c

    const/4 v5, 0x1

    .line 6472
    :goto_d
    const/16 v7, 0xc

    .line 6473
    const/4 v8, 0x0

    .line 6472
    invoke-virtual {v6, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    .line 6474
    .restart local v21    # "msg":Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6475
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 6473
    .end local v21    # "msg":Landroid/os/Message;
    :cond_3c
    const/4 v5, 0x0

    goto :goto_d

    .line 6486
    :cond_3d
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 6149
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_a
        0x6 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_5
        0x1b -> :sswitch_3
        0x4f -> :sswitch_9
        0x50 -> :sswitch_2
        0x55 -> :sswitch_9
        0x56 -> :sswitch_9
        0x57 -> :sswitch_9
        0x58 -> :sswitch_9
        0x59 -> :sswitch_9
        0x5a -> :sswitch_9
        0x5b -> :sswitch_9
        0x7e -> :sswitch_9
        0x7f -> :sswitch_9
        0x82 -> :sswitch_9
        0xa4 -> :sswitch_0
        0xde -> :sswitch_9
        0xdf -> :sswitch_6
        0xe0 -> :sswitch_8
        0xe7 -> :sswitch_b
        0x114 -> :sswitch_7
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 9
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v4, 0x0

    .line 6600
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 6601
    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 6602
    const-string/jumbo v3, "android.policy:MOTION"

    .line 6601
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6603
    return v4

    .line 6607
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6608
    const/4 v0, 0x1

    return v0

    .line 6614
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 6615
    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 6616
    const-string/jumbo v3, "android.policy:MOTION"

    .line 6615
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6619
    :cond_2
    return v4
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .prologue
    .line 2346
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1676
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 1675
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3015
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 3016
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3017
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    .line 3015
    if-nez v2, :cond_1

    .line 3018
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ed

    if-ne v2, v3, :cond_2

    .line 3015
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 3018
    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .prologue
    .line 7195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7196
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 7195
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 3023
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 7145
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 7151
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7152
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingOrOccluded()Z
    .locals 1

    .prologue
    .line 7158
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 7118
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 8282
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    .line 8283
    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 8284
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8286
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1680
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1681
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 1680
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 7980
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .prologue
    .line 7985
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7986
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 7984
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 3445
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4272
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 4271
    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 3
    .param p1, "awakenFromDreams"    # Z
    .param p2, "respectKeyguard"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4280
    if-eqz p2, :cond_1

    .line 4281
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4283
    return-void

    .line 4286
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4289
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$22;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4302
    return-void

    .line 4308
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4311
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v1, :cond_4

    .line 4313
    if-eqz p1, :cond_2

    .line 4314
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 4316
    :cond_2
    const-string/jumbo v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4317
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 4279
    :cond_3
    :goto_1
    return-void

    .line 4318
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_3

    .line 4321
    const-string/jumbo v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4322
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    goto :goto_1

    .line 4309
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 4
    .param p1, "keyguardActive"    # Z

    .prologue
    .line 6736
    const-string/jumbo v3, "deviceidle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 6735
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 6737
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_0

    .line 6739
    :try_start_0
    const-string/jumbo v3, "voice-search"

    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6744
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6745
    .local v2, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6746
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6747
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6734
    return-void

    .line 6740
    .end local v2    # "voiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 29
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 4907
    :cond_1
    return-void

    .line 4909
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 4910
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v20

    .line 4911
    .local v20, "isDefaultDisplay":Z
    if-eqz v20, :cond_9

    .line 4912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    const/16 v21, 0x1

    .line 4913
    .local v21, "needsToOffsetInputMethodTarget":Z
    :goto_0
    if-eqz v21, :cond_3

    .line 4915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4918
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    .line 4919
    .local v4, "fl":I
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->getPrivateWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v23

    .line 4920
    .local v23, "pfl":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v25, v0

    .line 4921
    .local v25, "sim":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/view/WindowManagerPolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v26

    .line 4923
    .local v26, "sysUiFl":I
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4924
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4925
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4926
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 4927
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4928
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4929
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 4930
    .local v14, "sf":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 4931
    .local v15, "osf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 4933
    if-eqz v20, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v17

    .line 4936
    :goto_1
    move/from16 v0, v25

    and-int/lit16 v5, v0, 0xf0

    .line 4938
    .local v5, "adjust":I
    if-eqz v20, :cond_b

    .line 4939
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4944
    :goto_2
    if-nez v20, :cond_d

    .line 4945
    if-eqz p2, :cond_c

    .line 4948
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5326
    :goto_3
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_4

    .line 5327
    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5328
    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5329
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_4

    .line 5330
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5331
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5339
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v28

    .line 5340
    .local v28, "useOutsets":Z
    if-eqz v20, :cond_5

    if-eqz v28, :cond_5

    .line 5341
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 5342
    .local v15, "osf":Landroid/graphics/Rect;
    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 5343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v22

    .line 5344
    .local v22, "outset":I
    if-lez v22, :cond_5

    .line 5345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    move/from16 v24, v0

    .line 5346
    .local v24, "rotation":I
    if-nez v24, :cond_41

    .line 5347
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v24    # "rotation":I
    :cond_5
    :goto_4
    move-object/from16 v7, p1

    .line 5371
    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5375
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5376
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 5380
    :cond_6
    :goto_5
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5381
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4903
    :cond_7
    :goto_6
    return-void

    .line 4912
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v13    # "dcf":Landroid/graphics/Rect;
    .end local v14    # "sf":Landroid/graphics/Rect;
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    .end local v23    # "pfl":I
    .end local v25    # "sim":I
    .end local v26    # "sysUiFl":I
    .end local v28    # "useOutsets":Z
    :cond_8
    const/16 v21, 0x0

    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    .line 4911
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    :cond_9
    const/16 v21, 0x0

    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    .line 4933
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v14    # "sf":Landroid/graphics/Rect;
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v23    # "pfl":I
    .restart local v25    # "sim":I
    .restart local v26    # "sysUiFl":I
    :cond_a
    const/16 v17, 0x0

    .local v17, "hasNavBar":Z
    goto/16 :goto_1

    .line 4941
    .end local v17    # "hasNavBar":Z
    .restart local v5    # "adjust":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 4951
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4952
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4954
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    .line 4953
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4956
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    .line 4955
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4958
    :cond_d
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_e

    .line 4959
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4961
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4963
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4967
    const/16 v2, 0x50

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4968
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_3

    .line 4969
    :cond_e
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_f

    .line 4970
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4971
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4972
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4973
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4976
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4977
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4978
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3

    .line 4979
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 4980
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4981
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4982
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4983
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4984
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4987
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 4988
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4992
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 4993
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 4994
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 4995
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 4996
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_13

    const/16 v18, 0x1

    .line 4999
    .local v18, "inheritTranslucentDecor":Z
    :goto_7
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_15

    .line 5000
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_14

    const/16 v19, 0x1

    .line 5002
    .local v19, "isAppWindow":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_11
    const/16 v27, 0x0

    .line 5003
    .local v27, "topAtRest":Z
    :goto_9
    if-eqz v19, :cond_12

    if-eqz v18, :cond_17

    .line 5022
    :cond_12
    :goto_a
    const v2, 0x10100

    and-int/2addr v2, v4

    .line 5023
    const v3, 0x10100

    .line 5022
    if-ne v2, v3, :cond_26

    .line 5030
    if-eqz p2, :cond_19

    .line 5033
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4996
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v27    # "topAtRest":Z
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "inheritTranslucentDecor":Z
    goto :goto_7

    .line 5000
    :cond_14
    const/16 v19, 0x0

    .restart local v19    # "isAppWindow":Z
    goto :goto_8

    .line 4999
    .end local v19    # "isAppWindow":Z
    :cond_15
    const/16 v19, 0x0

    .restart local v19    # "isAppWindow":Z
    goto :goto_8

    .line 5002
    :cond_16
    const/16 v27, 0x1

    .restart local v27    # "topAtRest":Z
    goto :goto_9

    .line 5003
    :cond_17
    if-nez v27, :cond_12

    .line 5004
    and-int/lit8 v2, v26, 0x4

    if-nez v2, :cond_18

    .line 5005
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_18

    .line 5006
    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    .line 5007
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    .line 5010
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 5012
    :cond_18
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_12

    .line 5013
    and-int/lit8 v2, v26, 0x2

    if-nez v2, :cond_12

    .line 5014
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_12

    .line 5017
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 5018
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    goto :goto_a

    .line 5035
    :cond_19
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1a

    .line 5036
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_1f

    .line 5044
    :cond_1a
    if-eqz v17, :cond_1c

    .line 5045
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 5044
    :goto_b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5046
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5047
    if-eqz v17, :cond_1d

    .line 5048
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    .line 5047
    :goto_c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5050
    if-eqz v17, :cond_1e

    .line 5051
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    .line 5050
    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5102
    :goto_e
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1b

    .line 5103
    const/high16 v2, 0x2000000

    and-int v2, v2, v23

    if-eqz v2, :cond_24

    .line 5104
    :cond_1b
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5105
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5106
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 5134
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v4, v11, v9}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5135
    const/16 v2, 0x30

    if-eq v5, v2, :cond_25

    .line 5136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 5137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 5138
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 5139
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 5144
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 5045
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_b

    .line 5049
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_c

    .line 5052
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_d

    .line 5057
    :cond_1f
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_20

    .line 5058
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_20

    .line 5059
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_20

    .line 5062
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5063
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5064
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5065
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 5066
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 5065
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5067
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5068
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_21

    .line 5069
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_21

    .line 5070
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_21

    .line 5075
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5076
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5077
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5078
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5082
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5083
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5084
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5085
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5087
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5088
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5089
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    .line 5090
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    .line 5089
    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5091
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    .line 5092
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 5091
    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5096
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5097
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5099
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5110
    :cond_22
    const/16 v2, 0x10

    if-eq v5, v2, :cond_23

    .line 5111
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 5122
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;)V

    goto/16 :goto_f

    .line 5116
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5117
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5118
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5119
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_11

    .line 5129
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5131
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 5141
    :cond_25
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_10

    .line 5146
    :cond_26
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_27

    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_38

    .line 5153
    :cond_27
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_28

    .line 5154
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_29

    .line 5157
    :cond_28
    if-eqz v17, :cond_2b

    .line 5158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 5157
    :goto_12
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5160
    if-eqz v17, :cond_2c

    .line 5161
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    .line 5160
    :goto_13
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5163
    if-eqz v17, :cond_2d

    .line 5164
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    .line 5163
    :goto_14
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5250
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v4, v11, v9}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5252
    const/16 v2, 0x30

    if-eq v5, v2, :cond_37

    .line 5253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 5254
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 5255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 5256
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 5261
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 5155
    :cond_29
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-eq v2, v3, :cond_28

    .line 5156
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xbb6

    if-eq v2, v3, :cond_28

    .line 5169
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_2a

    .line 5170
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_2e

    .line 5172
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5173
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5174
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 5175
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 5174
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5176
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 5177
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 5176
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_15

    .line 5158
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_12

    .line 5162
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_13

    .line 5165
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_14

    .line 5181
    :cond_2e
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_2f

    .line 5182
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_30

    .line 5183
    :cond_2f
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_30

    .line 5185
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5187
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 5188
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 5187
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 5190
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 5189
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    .line 5191
    :cond_30
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_31

    .line 5193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 5196
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 5195
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 5198
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 5197
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    .line 5199
    :cond_31
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_32

    .line 5202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5208
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    .line 5210
    :cond_32
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_33

    .line 5211
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_33

    .line 5212
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_33

    .line 5215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    .line 5217
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5220
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    .line 5219
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    .line 5221
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 5222
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_36

    .line 5223
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_34

    .line 5224
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_35

    .line 5235
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5237
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 5238
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 5237
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 5240
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 5239
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    .line 5225
    :cond_35
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_34

    .line 5226
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_36

    .line 5227
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_34

    .line 5242
    :cond_36
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5243
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5244
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 5245
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 5244
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 5247
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 5246
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    .line 5258
    :cond_37
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_16

    .line 5262
    :cond_38
    if-eqz p2, :cond_39

    .line 5267
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 5273
    :cond_39
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_3a

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_3b

    .line 5278
    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5279
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 5281
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 5280
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 5283
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 5282
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 5284
    :cond_3b
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_3c

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_3d

    .line 5286
    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 5291
    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5292
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5295
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 5296
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5297
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 5311
    :goto_17
    const/16 v2, 0x30

    if-eq v5, v2, :cond_40

    .line 5312
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 5313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 5314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 5315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 5320
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 5300
    :cond_3e
    const/16 v2, 0x10

    if-eq v5, v2, :cond_3f

    .line 5301
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5304
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_17

    .line 5306
    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5307
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5308
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5309
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_17

    .line 5317
    :cond_40
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_18

    .line 5348
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v27    # "topAtRest":Z
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v22    # "outset":I
    .restart local v24    # "rotation":I
    .restart local v28    # "useOutsets":Z
    :cond_41
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_42

    .line 5349
    iget v2, v15, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 5350
    :cond_42
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_43

    .line 5351
    iget v2, v15, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 5352
    :cond_43
    const/4 v2, 0x3

    move/from16 v0, v24

    if-ne v0, v2, :cond_5

    .line 5353
    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    .line 5377
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v24    # "rotation":I
    :cond_44
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5378
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_5

    .line 5382
    :cond_45
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_6
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 7616
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7617
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7618
    if-eqz p1, :cond_0

    .line 7621
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 7623
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7615
    return-void
.end method

.method public navigationBarCanMove()Z
    .locals 1

    .prologue
    .line 8237
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    return v0
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1171
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v0, :cond_2

    .line 1172
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v3, :cond_0

    .line 1173
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1178
    :cond_0
    return v2

    .line 1174
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1175
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1181
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1187
    :cond_3
    return v2

    .line 1182
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_3

    .line 1183
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1184
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v3, :cond_3

    .line 1189
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v2, :cond_6

    .line 1198
    const/4 v0, 0x0

    return v0

    .line 1200
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v0
.end method

.method public needsNavigationBar()Z
    .locals 1

    .prologue
    .line 8232
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    .prologue
    .line 7183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7184
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$28;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$28;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7182
    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 5825
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    .line 5826
    .local v2, "lensCoverState":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v3, v2, :cond_1

    .line 5827
    return-void

    .line 5825
    .end local v2    # "lensCoverState":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "lensCoverState":I
    goto :goto_0

    .line 5829
    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 5830
    if-nez v2, :cond_2

    .line 5832
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 5834
    :goto_1
    if-eqz v1, :cond_4

    .line 5835
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5839
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 5840
    const-string/jumbo v6, "android.policy:CAMERA_COVER"

    .line 5839
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5841
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5843
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 5824
    return-void

    .line 5833
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .local v1, "keyguardActive":Z
    goto :goto_1

    .line 5837
    .end local v1    # "keyguardActive":Z
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 5806
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 5807
    .local v0, "newLidState":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_1

    .line 5808
    return-void

    .line 5806
    .end local v0    # "newLidState":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "newLidState":I
    goto :goto_0

    .line 5811
    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 5812
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 5813
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5815
    if-eqz p3, :cond_3

    .line 5816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 5817
    const-string/jumbo v4, "android.policy:LID"

    .line 5816
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5804
    :cond_2
    :goto_1
    return-void

    .line 5818
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_2

    .line 5819
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7923
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7924
    return v7

    .line 7926
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7927
    const-string/jumbo v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    .line 7926
    invoke-static {v1, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 7928
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    .line 7931
    :cond_1
    const/4 v4, 0x0

    .line 7932
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    .line 7958
    return v7

    .line 7926
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hapticsDisabled":Z
    goto :goto_0

    .line 7929
    :cond_3
    return v7

    .line 7934
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 7962
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    .line 7963
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 7964
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 7969
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    if-ne v1, v8, :cond_5

    .line 7971
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v7

    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 7976
    :goto_3
    return v8

    .line 7937
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7940
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7943
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7946
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7949
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7952
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7955
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7966
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 7967
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    .line 7974
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    .line 7932
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x7

    .line 3204
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 3258
    :goto_0
    return v4

    .line 3206
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3207
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 3208
    const-string/jumbo v2, "PhoneWindowManager"

    .line 3206
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3211
    return v3

    .line 3214
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3215
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 3218
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3219
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 3220
    const-string/jumbo v2, "PhoneWindowManager"

    .line 3218
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 3222
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3223
    return v3

    .line 3226
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3227
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 3234
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3235
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 3236
    const-string/jumbo v2, "PhoneWindowManager"

    .line 3234
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3240
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3241
    const-string/jumbo v1, "android.permission.THIRD_PARTY_KEYGUARD"

    .line 3240
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3243
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "cyanogenmod.permission.THIRD_PARTY_KEYGUARD"

    .line 3244
    const-string/jumbo v2, "PhoneWindowManager"

    .line 3243
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 3247
    return v3

    .line 3249
    :cond_3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3252
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    .line 3253
    return v3

    .line 3255
    :cond_4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3204
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_4
        0x7f1 -> :sswitch_2
        0xbb6 -> :sswitch_3
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 2805
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 3182
    if-eqz p2, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3178
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 3264
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 3265
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3266
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3267
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 3263
    :cond_0
    :goto_0
    return-void

    .line 3268
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 3269
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3271
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    .line 3272
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3273
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 3274
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 3275
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7227
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v5, :cond_0

    .line 7228
    return v4

    .line 7231
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 7232
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 7233
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    .line 7234
    move v1, p2

    .line 7238
    :cond_1
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v5, v3, :cond_2

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v5, :cond_2

    .line 7239
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasRemovableLid:Z

    if-eqz v5, :cond_4

    .line 7240
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v5, :cond_4

    .line 7244
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v5, v9, :cond_6

    .line 7245
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v5, :cond_6

    .line 7249
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 7250
    move v0, v1

    .line 7329
    .local v0, "preferredRotation":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 7383
    :pswitch_0
    if-ltz v0, :cond_25

    monitor-exit v6

    .line 7384
    return v0

    .line 7243
    .end local v0    # "preferredRotation":I
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7250
    .end local v0    # "preferredRotation":I
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7251
    .end local v0    # "preferredRotation":I
    :cond_6
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v5, v3, :cond_7

    .line 7252
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_9

    .line 7254
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v5, :cond_a

    .line 7258
    :cond_8
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_c

    .line 7259
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7253
    .end local v0    # "preferredRotation":I
    :cond_9
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v5, v10, :cond_7

    .line 7260
    :cond_a
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v5, :cond_d

    :cond_b
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v5, :cond_d

    .line 7263
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7259
    .end local v0    # "preferredRotation":I
    :cond_c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7264
    .end local v0    # "preferredRotation":I
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v5, :cond_e

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    if-le v5, v8, :cond_e

    .line 7266
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7267
    .end local v0    # "preferredRotation":I
    :cond_e
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v5, :cond_f

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v5, :cond_f

    .line 7268
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v5, :cond_f

    .line 7273
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7274
    .end local v0    # "preferredRotation":I
    :cond_f
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v5, :cond_10

    .line 7277
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7278
    .end local v0    # "preferredRotation":I
    :cond_10
    const/16 v5, 0xe

    if-ne p1, v5, :cond_11

    .line 7280
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7281
    .end local v0    # "preferredRotation":I
    :cond_11
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v5, :cond_12

    .line 7284
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 7285
    .end local v0    # "preferredRotation":I
    :cond_12
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-nez v5, :cond_17

    .line 7286
    if-eq p1, v9, :cond_13

    .line 7287
    if-ne p1, v8, :cond_16

    .line 7297
    :cond_13
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v5, :cond_14

    .line 7301
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 7302
    const v7, 0x112003d

    .line 7301
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_18

    move v5, v3

    :goto_1
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 7307
    :cond_14
    const/16 v5, 0xa

    if-eq p1, v5, :cond_15

    .line 7308
    const/16 v5, 0xd

    if-ne p1, v5, :cond_19

    .line 7307
    :cond_15
    const/4 v2, 0x1

    .line 7311
    :goto_2
    if-eqz v2, :cond_1b

    .line 7312
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 7288
    .end local v0    # "preferredRotation":I
    :cond_16
    const/16 v5, 0xb

    if-eq p1, v5, :cond_13

    .line 7289
    const/16 v5, 0xc

    if-eq p1, v5, :cond_13

    .line 7290
    const/16 v5, 0xd

    if-eq p1, v5, :cond_13

    .line 7291
    :cond_17
    if-eq p1, v10, :cond_13

    .line 7292
    const/16 v5, 0xa

    if-eq p1, v5, :cond_13

    .line 7293
    const/4 v5, 0x6

    if-eq p1, v5, :cond_13

    .line 7294
    const/4 v5, 0x7

    if-eq p1, v5, :cond_13

    .line 7316
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v5, v3, :cond_1c

    .line 7317
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1c

    .line 7322
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .end local v0    # "preferredRotation":I
    :cond_18
    move v5, v4

    .line 7302
    goto :goto_1

    .line 7309
    :cond_19
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    .line 7310
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-eqz v7, :cond_1a

    .line 7309
    :goto_3
    invoke-static {v1, v5, v3}, Lcom/android/internal/view/RotationPolicy;->isRotationAllowed(IIZ)Z

    move-result v2

    .local v2, "useSensorRotation":Z
    goto :goto_2

    .end local v2    # "useSensorRotation":Z
    :cond_1a
    move v3, v4

    .line 7310
    goto :goto_3

    .line 7314
    :cond_1b
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 7326
    .end local v0    # "preferredRotation":I
    :cond_1c
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 7332
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1d

    monitor-exit v6

    .line 7333
    return v0

    .line 7335
    :cond_1d
    :try_start_2
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v3

    .line 7339
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_1e

    monitor-exit v6

    .line 7340
    return v0

    .line 7342
    :cond_1e
    :try_start_4
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return v3

    .line 7346
    :pswitch_3
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-eqz v3, :cond_1f

    monitor-exit v6

    .line 7347
    return v0

    .line 7349
    :cond_1f
    :try_start_6
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return v3

    .line 7353
    :pswitch_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-eqz v3, :cond_20

    monitor-exit v6

    .line 7354
    return v0

    .line 7356
    :cond_20
    :try_start_8
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v6

    return v3

    .line 7361
    :pswitch_5
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v3

    if-eqz v3, :cond_21

    monitor-exit v6

    .line 7362
    return v0

    .line 7364
    :cond_21
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v3

    if-eqz v3, :cond_22

    monitor-exit v6

    .line 7365
    return p2

    .line 7367
    :cond_22
    :try_start_b
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v6

    return v3

    .line 7372
    :pswitch_6
    :try_start_c
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v3

    if-eqz v3, :cond_23

    monitor-exit v6

    .line 7373
    return v0

    .line 7375
    :cond_23
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v3

    if-eqz v3, :cond_24

    monitor-exit v6

    .line 7376
    return p2

    .line 7378
    :cond_24
    :try_start_e
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v6

    return v3

    :cond_25
    monitor-exit v6

    .line 7386
    return v4

    .line 7231
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 7329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 7393
    packed-switch p1, :pswitch_data_0

    .line 7405
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 7397
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    return v0

    .line 7402
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 7393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 6990
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 6991
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6992
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 6995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 6996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 6997
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6999
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7000
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 6987
    return-void

    .line 6991
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 7033
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7034
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7035
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 7032
    return-void

    .line 7033
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v0, 0x0

    .line 7010
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 7011
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7012
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7016
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 7018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7019
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7021
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 7007
    return-void

    .line 7025
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7011
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3286
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_6

    .line 3287
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 3288
    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v3, :cond_0

    .line 3289
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 3290
    :cond_0
    if-eqz v0, :cond_2

    :goto_1
    return v1

    .line 3287
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    .line 3290
    :cond_2
    const v1, 0x10a001e

    goto :goto_1

    .line 3291
    :cond_3
    if-eq p2, v5, :cond_4

    .line 3292
    if-ne p2, v6, :cond_11

    .line 3293
    :cond_4
    if-eqz v0, :cond_5

    :goto_2
    return v1

    :cond_5
    const v1, 0x10a001d

    goto :goto_2

    .line 3295
    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_11

    .line 3296
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_7

    .line 3297
    return v4

    .line 3300
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_b

    .line 3301
    if-eq p2, v3, :cond_8

    .line 3302
    const/4 v2, 0x4

    if-ne p2, v2, :cond_9

    .line 3303
    :cond_8
    const v1, 0x10a0018

    return v1

    .line 3304
    :cond_9
    if-eq p2, v5, :cond_a

    .line 3305
    if-ne p2, v6, :cond_11

    .line 3306
    :cond_a
    const v1, 0x10a0017

    return v1

    .line 3309
    :cond_b
    if-eq p2, v3, :cond_c

    .line 3310
    const/4 v2, 0x4

    if-ne p2, v2, :cond_e

    .line 3311
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v1, :cond_d

    .line 3312
    const v1, 0x10a001a

    .line 3311
    :goto_3
    return v1

    .line 3312
    :cond_d
    const v1, 0x10a001c

    goto :goto_3

    .line 3313
    :cond_e
    if-eq p2, v5, :cond_f

    .line 3314
    if-ne p2, v6, :cond_11

    .line 3315
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v1, :cond_10

    .line 3316
    const v1, 0x10a0019

    .line 3315
    :goto_4
    return v1

    .line 3316
    :cond_10
    const v1, 0x10a001b

    goto :goto_4

    .line 3321
    :cond_11
    const/4 v2, 0x5

    if-ne p2, v2, :cond_12

    .line 3322
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3324
    const v1, 0x10a0011

    return v1

    .line 3326
    :cond_12
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_13

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v2, :cond_13

    .line 3327
    if-ne p2, v5, :cond_13

    .line 3332
    return v1

    .line 3335
    :cond_13
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    .prologue
    const v3, 0x10a005a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3344
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 3356
    aput v1, p1, v2

    aput v1, p1, v1

    .line 3339
    :goto_0
    return-void

    .line 3347
    :pswitch_0
    const v0, 0x10a005c

    aput v0, p1, v1

    .line 3348
    aput v3, p1, v2

    goto :goto_0

    .line 3351
    :pswitch_1
    const v0, 0x10a005b

    aput v0, p1, v1

    .line 3352
    aput v3, p1, v2

    goto :goto_0

    .line 3360
    :cond_0
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    .line 3345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 7209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7208
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7213
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7212
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 4795
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 4803
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4804
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4805
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4806
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 4848
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    .line 4849
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .line 4848
    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4794
    return-void

    .line 4814
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_5

    .line 4819
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    .line 4820
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 4819
    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4841
    :cond_2
    :goto_2
    if-eqz p5, :cond_d

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4842
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4843
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4820
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    .line 4828
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4829
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4830
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 4831
    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 4832
    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 4833
    :cond_8
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 4834
    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 4835
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 4836
    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 4837
    :cond_b
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 4838
    :cond_c
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_d
    move-object v0, p9

    .line 4841
    goto/16 :goto_3
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    .prologue
    .line 7888
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7889
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 7890
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 7891
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 7887
    return-void

    .line 7888
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 8253
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 8254
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 8255
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 8257
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 8259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8264
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8252
    return-void

    .line 8260
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2351
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 2352
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    .line 2353
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    .line 2354
    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    .line 2355
    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    .line 2350
    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 5847
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    .line 5848
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5849
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    .line 5850
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5851
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5852
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5853
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5846
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    const v10, 0x112003e

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2258
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 2259
    :cond_0
    return-void

    .line 2261
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 2263
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2265
    .local v2, "res":Landroid/content/res/Resources;
    if-le p2, p3, :cond_4

    .line 2266
    move v3, p3

    .line 2267
    .local v3, "shortSize":I
    move v0, p2

    .line 2268
    .local v0, "longSize":I
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2269
    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 2270
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2271
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2272
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2292
    :goto_0
    const v5, 0x1050017

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2291
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    .line 2294
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBarSize()V

    .line 2297
    mul-int/lit16 v5, v3, 0xa0

    div-int v4, v5, p4

    .line 2298
    .local v4, "shortSizeDp":I
    mul-int/lit16 v5, v0, 0xa0

    div-int v1, v5, p4

    .line 2301
    .local v1, "longSizeDp":I
    if-eq p2, p3, :cond_6

    const/16 v5, 0x258

    if-ge v4, v5, :cond_6

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 2304
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/utils/du/DUActionUtils;->hasNavbarByDefault(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2308
    const-string/jumbo v5, "portrait"

    const-string/jumbo v8, "persist.demo.hdmirotation"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2309
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 2313
    :goto_2
    const-string/jumbo v5, "persist.demo.hdmirotationlock"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 2317
    const-string/jumbo v5, "portrait"

    const-string/jumbo v8, "persist.demo.remoterotation"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2318
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .line 2323
    :goto_3
    const-string/jumbo v5, "persist.demo.rotationlock"

    .line 2322
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    .line 2327
    const/16 v5, 0x3c0

    if-lt v1, v5, :cond_2

    const/16 v5, 0x2d0

    if-lt v4, v5, :cond_2

    .line 2328
    const v5, 0x112008e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2327
    if-eqz v5, :cond_2

    .line 2332
    const-string/jumbo v5, "true"

    const-string/jumbo v8, "config.override_forced_orient"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2327
    :cond_2
    :goto_4
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 2255
    return-void

    .line 2274
    .end local v1    # "longSizeDp":I
    .end local v4    # "shortSizeDp":I
    :cond_3
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2275
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 2278
    .end local v0    # "longSize":I
    .end local v3    # "shortSize":I
    :cond_4
    move v3, p2

    .line 2279
    .restart local v3    # "shortSize":I
    move v0, p3

    .line 2280
    .restart local v0    # "longSize":I
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2281
    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2282
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2283
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2284
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 2286
    :cond_5
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2287
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .restart local v1    # "longSizeDp":I
    .restart local v4    # "shortSizeDp":I
    :cond_6
    move v5, v7

    .line 2301
    goto/16 :goto_1

    .line 2311
    :cond_7
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_2

    .line 2320
    :cond_8
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_3

    :cond_9
    move v7, v6

    .line 2332
    goto :goto_4
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 8242
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8243
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8241
    return-void
.end method

.method public setLiveLockscreenEdgeDetector(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8489
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowKeyguardOnLeftSwipe:Z

    .line 8488
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7543
    if-nez p1, :cond_0

    .line 7544
    const-string/jumbo p1, "stop.looking.at.me.swan"

    .line 7546
    :cond_0
    sput-object p1, Lcom/android/server/policy/PhoneWindowManager;->currentPackageName:Ljava/lang/String;

    .line 7542
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 7411
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 7410
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .prologue
    .line 7455
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 7456
    if-eqz p1, :cond_0

    .line 7457
    const/16 v0, 0x2711

    .line 7456
    :goto_0
    const/4 v1, 0x0

    .line 7458
    const/4 v2, 0x1

    .line 7456
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 7454
    return-void

    .line 7458
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 7433
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7436
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 7438
    const-string/jumbo v1, "user_rotation"

    .line 7437
    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7442
    const-string/jumbo v1, "accelerometer_rotation"

    .line 7443
    const/4 v2, 0x0

    .line 7441
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7432
    :goto_0
    return-void

    .line 7447
    :cond_0
    const-string/jumbo v1, "accelerometer_rotation"

    .line 7446
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 0
    
    .prologue
    
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1647
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1648
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1646
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    .prologue
    .line 1661
    const-string/jumbo v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1662
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v1, :cond_0

    .line 1663
    new-instance v1, Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1665
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1666
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1667
    if-eqz v0, :cond_1

    .line 1670
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1660
    :cond_1
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 4239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4240
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4238
    return-void
.end method

.method startDockOrHome(ZZ)V
    .locals 4
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    .prologue
    .line 7802
    if-eqz p2, :cond_0

    .line 7803
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 7806
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7807
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 7809
    if-eqz p1, :cond_1

    .line 7810
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7812
    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7813
    return-void

    .line 7814
    :catch_0
    move-exception v1

    .line 7820
    :cond_2
    if-eqz p1, :cond_3

    .line 7821
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7822
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7827
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7801
    return-void

    .line 7824
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 7202
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7204
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 7201
    :cond_0
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 6884
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6885
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 6882
    :cond_0
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6912
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6919
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6920
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 6922
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6923
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6924
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6927
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 6911
    :cond_0
    return-void

    .line 6919
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2953
    packed-switch p1, :pswitch_data_0

    .line 2966
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    const/4 v0, 0x0

    return v0

    .line 2956
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2958
    :pswitch_1
    const/4 v0, -0x2

    return v0

    .line 2960
    :pswitch_2
    const/4 v0, -0x1

    return v0

    .line 2962
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2964
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 2953
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7512
    const/4 v0, 0x0

    .line 7513
    .local v0, "bindKeyguardNow":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7517
    const/4 v0, 0x1

    :goto_0
    monitor-exit v2

    .line 7524
    if-eqz v0, :cond_0

    .line 7525
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 7526
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 7528
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7529
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 7531
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 7532
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 7533
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 7511
    return-void

    .line 7521
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7513
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 7528
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 7476
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 7477
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 7479
    invoke-static {}, Landroid/service/gesture/EdgeGestureManager;->getInstance()Landroid/service/gesture/EdgeGestureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureManager:Landroid/service/gesture/EdgeGestureManager;

    .line 7480
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureManager:Landroid/service/gesture/EdgeGestureManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEdgeGestureActivationListener:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    invoke-virtual {v1, v2}, Landroid/service/gesture/EdgeGestureManager;->setEdgeGestureActivationListener(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Z

    .line 7482
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 7483
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 7485
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7486
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 7488
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$29;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$29;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7495
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    .line 7496
    .local v0, "bindKeyguardNow":Z
    if-eqz v0, :cond_0

    .line 7498
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 7502
    if-eqz v0, :cond_1

    .line 7503
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 7504
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 7506
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    .line 7475
    return-void

    .line 7485
    .end local v0    # "bindKeyguardNow":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1216
    return-void

    .line 1225
    :cond_0
    const/4 v0, 0x1

    .line 1228
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    .line 1229
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 1228
    if-eqz v1, :cond_1

    .line 1229
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 1228
    if-eqz v1, :cond_1

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1231
    const/4 v0, 0x0

    .line 1233
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 1236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1241
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_2

    .line 1242
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1244
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1213
    :cond_2
    return-void
.end method

.method updateRotation(Z)V
    .locals 3
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 7726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7723
    :goto_0
    return-void

    .line 7727
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 7735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7732
    :goto_0
    return-void

    .line 7736
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateSettings()V
    .locals 19

    .prologue
    .line 2360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2361
    .local v8, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 2362
    .local v10, "updateRotation":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 2363
    const v16, 0x10e0065

    .line 2362
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2364
    .local v5, "mDeviceHardwareWakeKeys":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2366
    :try_start_0
    const-string/jumbo v15, "end_button_behavior"

    .line 2367
    const/16 v17, 0x2

    .line 2368
    const/16 v18, -0x2

    .line 2365
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2370
    const-string/jumbo v15, "incall_power_button_behavior"

    .line 2371
    const/16 v17, 0x1

    .line 2372
    const/16 v18, -0x2

    .line 2369
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2374
    const-string/jumbo v15, "ring_home_button_behavior"

    .line 2375
    const/16 v17, 0x1

    .line 2376
    const/16 v18, -0x2

    .line 2373
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mRingHomeBehavior:I

    .line 2378
    const-string/jumbo v15, "home_wake_screen"

    const/16 v17, 0x1

    const/16 v18, -0x2

    .line 2377
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2378
    const/16 v17, 0x1

    .line 2377
    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 2379
    and-int/lit8 v15, v5, 0x1

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    .line 2377
    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeScreen:Z

    .line 2381
    const-string/jumbo v15, "back_wake_screen"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2380
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2381
    const/16 v17, 0x1

    .line 2380
    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 2382
    and-int/lit8 v15, v5, 0x2

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    .line 2380
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackWakeScreen:Z

    .line 2384
    const-string/jumbo v15, "menu_wake_screen"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2383
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2384
    const/16 v17, 0x1

    .line 2383
    move/from16 v0, v17

    if-ne v15, v0, :cond_f

    .line 2385
    and-int/lit8 v15, v5, 0x4

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    .line 2383
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mMenuWakeScreen:Z

    .line 2387
    const-string/jumbo v15, "assist_wake_screen"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2386
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2387
    const/16 v17, 0x1

    .line 2386
    move/from16 v0, v17

    if-ne v15, v0, :cond_11

    .line 2388
    and-int/lit8 v15, v5, 0x8

    if-eqz v15, :cond_10

    const/4 v15, 0x1

    .line 2386
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistWakeScreen:Z

    .line 2390
    const-string/jumbo v15, "app_switch_wake_screen"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2389
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2390
    const/16 v17, 0x1

    .line 2389
    move/from16 v0, v17

    if-ne v15, v0, :cond_13

    .line 2391
    and-int/lit8 v15, v5, 0x10

    if-eqz v15, :cond_12

    const/4 v15, 0x1

    .line 2389
    :goto_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchWakeScreen:Z

    .line 2393
    const-string/jumbo v15, "camera_wake_screen"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2392
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2393
    const/16 v17, 0x1

    .line 2392
    move/from16 v0, v17

    if-ne v15, v0, :cond_15

    .line 2394
    and-int/lit8 v15, v5, 0x20

    if-eqz v15, :cond_14

    const/4 v15, 0x1

    .line 2392
    :goto_5
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraWakeScreen:Z

    .line 2396
    const-string/jumbo v15, "camera_sleep_on_release"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2395
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2396
    const/16 v17, 0x1

    .line 2395
    move/from16 v0, v17

    if-ne v15, v0, :cond_16

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraSleepOnRelease:Z

    .line 2398
    const-string/jumbo v15, "camera_launch"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2397
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2398
    const/16 v17, 0x1

    .line 2397
    move/from16 v0, v17

    if-ne v15, v0, :cond_17

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLaunch:Z

    .line 2400
    const-string/jumbo v15, "volume_wake_screen"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2399
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2400
    const/16 v17, 0x1

    .line 2399
    move/from16 v0, v17

    if-ne v15, v0, :cond_19

    .line 2401
    and-int/lit8 v15, v5, 0x40

    if-eqz v15, :cond_18

    const/4 v15, 0x1

    .line 2399
    :goto_8
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeScreen:Z

    .line 2403
    const-string/jumbo v15, "volbtn_music_controls"

    const/16 v17, 0x1

    const/16 v18, -0x2

    .line 2402
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2403
    const/16 v17, 0x1

    .line 2402
    move/from16 v0, v17

    if-ne v15, v0, :cond_1a

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolBtnMusicControls:Z

    .line 2405
    const-string/jumbo v15, "call_volume_answer"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2404
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2405
    const/16 v17, 0x1

    .line 2404
    move/from16 v0, v17

    if-ne v15, v0, :cond_1b

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeAnswer:Z

    .line 2409
    const-string/jumbo v15, "pa_pie_state"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2408
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2409
    const/16 v17, 0x1

    .line 2408
    move/from16 v0, v17

    if-ne v15, v0, :cond_1c

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mPieState:Z

    .line 2413
    const-string/jumbo v15, "wake_gesture_enabled"

    const/16 v17, 0x0

    .line 2414
    const/16 v18, -0x2

    .line 2412
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    if-eqz v15, :cond_1d

    const/4 v14, 0x1

    .line 2415
    .local v14, "wakeGestureEnabledSetting":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v15, v14, :cond_0

    .line 2416
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2417
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2421
    :cond_0
    const-string/jumbo v15, "edge_service_for_gestures"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2420
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2421
    const/16 v17, 0x1

    .line 2420
    move/from16 v0, v17

    if-ne v15, v0, :cond_1e

    const/4 v11, 0x1

    .line 2422
    .local v11, "useEdgeService":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    xor-int/2addr v15, v11

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v15, :cond_2

    .line 2423
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    if-nez v15, :cond_1f

    if-eqz v11, :cond_1f

    .line 2424
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    .line 2425
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2430
    :cond_1
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateEdgeGestureListenerState()V

    .line 2434
    :cond_2
    const-string/jumbo v15, "navigation_bar_left"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2433
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2434
    const/16 v17, 0x1

    .line 2433
    move/from16 v0, v17

    if-ne v15, v0, :cond_20

    const/4 v15, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    .line 2436
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasHwKeysEnabled()Z

    .line 2437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateKeyAssignments()V

    .line 2440
    const-string/jumbo v17, "navigation_bar_visible"

    .line 2441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/internal/utils/du/DUActionUtils;->hasNavbarByDefault(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    .line 2442
    :goto_10
    const/16 v18, -0x2

    .line 2439
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v15, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2442
    const/16 v17, 0x1

    .line 2439
    move/from16 v0, v17

    if-ne v15, v0, :cond_22

    const/4 v2, 0x1

    .line 2443
    .local v2, "doShowNavbar":Z
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    if-eq v2, v15, :cond_3

    .line 2444
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    .line 2447
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBarSize()V

    .line 2451
    const-string/jumbo v15, "user_rotation"

    const/16 v17, 0x0

    .line 2452
    const/16 v18, -0x2

    .line 2450
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 2453
    .local v12, "userRotation":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v15, v12, :cond_4

    .line 2454
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 2455
    const/4 v10, 0x1

    .line 2458
    :cond_4
    const-string/jumbo v15, "accelerometer_rotation"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2457
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    if-eqz v15, :cond_23

    .line 2459
    const/4 v13, 0x0

    .line 2461
    .local v13, "userRotationMode":I
    :goto_12
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v15, v13, :cond_5

    .line 2462
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 2463
    const/4 v10, 0x1

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2468
    :cond_5
    const-string/jumbo v15, "accelerometer_rotation_angles"

    const/16 v17, -0x1

    .line 2467
    move/from16 v0, v17

    invoke-static {v8, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    .line 2471
    const-string/jumbo v15, "recents_finger_gesture"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2470
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2471
    const/16 v17, 0x1

    .line 2470
    move/from16 v0, v17

    if-ne v15, v0, :cond_24

    const/4 v7, 0x1

    .line 2472
    .local v7, "recentsFingerGesture":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->enableSwipeRecentsFingerGesture(Z)V

    .line 2476
    const-string/jumbo v15, "three_finger_gesture"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2475
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2476
    const/16 v17, 0x1

    .line 2475
    move/from16 v0, v17

    if-ne v15, v0, :cond_25

    const/4 v9, 0x1

    .line 2477
    .local v9, "threeFingerGesture":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/policy/PhoneWindowManager;->enableSwipeThreeFingerGesture(Z)V

    .line 2479
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v15, :cond_6

    .line 2481
    const-string/jumbo v15, "pointer_location"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2480
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2482
    .local v6, "pointerLocation":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v15, v6, :cond_6

    .line 2483
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v6, :cond_26

    .line 2485
    const/4 v15, 0x1

    .line 2484
    :goto_15
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2490
    .end local v6    # "pointerLocation":I
    :cond_6
    const-string/jumbo v15, "screen_off_timeout"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2489
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2492
    const-string/jumbo v15, "default_input_method"

    const/16 v17, -0x2

    .line 2491
    move/from16 v0, v17

    invoke-static {v8, v15, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2493
    .local v4, "imId":Ljava/lang/String;
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_27

    const/4 v3, 0x1

    .line 2494
    .local v3, "hasSoftInput":Z
    :goto_16
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v15, v3, :cond_7

    .line 2495
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2496
    const/4 v10, 0x1

    .line 2498
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v15, :cond_8

    .line 2499
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V

    .line 2503
    :cond_8
    const-string/jumbo v15, "hold_back_to_kill_timeout"

    const/16 v17, 0x2ee

    .line 2502
    move/from16 v0, v17

    invoke-static {v8, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKillTimeout:I

    .line 2506
    const-string/jumbo v15, "keyguard_toggle_torch"

    const/16 v17, 0x0

    const/16 v18, -0x2

    .line 2505
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v15, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2506
    const/16 v17, 0x1

    .line 2505
    move/from16 v0, v17

    if-ne v15, v0, :cond_28

    const/4 v15, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    .line 2509
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v15}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 2510
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v16

    .line 2512
    if-eqz v10, :cond_9

    .line 2513
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 2359
    :cond_9
    return-void

    .line 2379
    .end local v2    # "doShowNavbar":Z
    .end local v3    # "hasSoftInput":Z
    .end local v4    # "imId":Ljava/lang/String;
    .end local v7    # "recentsFingerGesture":Z
    .end local v9    # "threeFingerGesture":Z
    .end local v11    # "useEdgeService":Z
    .end local v12    # "userRotation":I
    .end local v13    # "userRotationMode":I
    .end local v14    # "wakeGestureEnabledSetting":Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2377
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2382
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 2380
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 2385
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2383
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2388
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2386
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2391
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2389
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2394
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 2392
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 2395
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 2397
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 2401
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 2399
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 2402
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 2404
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 2408
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 2412
    :cond_1d
    const/4 v14, 0x0

    .restart local v14    # "wakeGestureEnabledSetting":Z
    goto/16 :goto_c

    .line 2420
    :cond_1e
    const/4 v11, 0x0

    .restart local v11    # "useEdgeService":Z
    goto/16 :goto_d

    .line 2426
    :cond_1f
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    if-eqz v15, :cond_1

    if-nez v11, :cond_1

    .line 2427
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mUsingEdgeGestureServiceForGestures:Z

    .line 2428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_e

    .line 2364
    .end local v11    # "useEdgeService":Z
    .end local v14    # "wakeGestureEnabledSetting":Z
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 2433
    .restart local v11    # "useEdgeService":Z
    .restart local v14    # "wakeGestureEnabledSetting":Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 2441
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_10

    .line 2439
    :cond_22
    const/4 v2, 0x0

    .restart local v2    # "doShowNavbar":Z
    goto/16 :goto_11

    .line 2460
    .restart local v12    # "userRotation":I
    :cond_23
    const/4 v13, 0x1

    .restart local v13    # "userRotationMode":I
    goto/16 :goto_12

    .line 2470
    :cond_24
    const/4 v7, 0x0

    .restart local v7    # "recentsFingerGesture":Z
    goto/16 :goto_13

    .line 2475
    :cond_25
    const/4 v9, 0x0

    .restart local v9    # "threeFingerGesture":Z
    goto/16 :goto_14

    .line 2485
    .restart local v6    # "pointerLocation":I
    :cond_26
    const/4 v15, 0x2

    goto/16 :goto_15

    .line 2493
    .end local v6    # "pointerLocation":I
    .restart local v4    # "imId":Ljava/lang/String;
    :cond_27
    const/4 v3, 0x0

    .restart local v3    # "hasSoftInput":Z
    goto/16 :goto_16

    .line 2505
    :cond_28
    const/4 v15, 0x0

    goto/16 :goto_17

    .line 2509
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method updateUiMode()V
    .locals 2

    .prologue
    .line 7713
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v1, :cond_0

    .line 7715
    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 7714
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 7718
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7712
    :goto_0
    return-void

    .line 7719
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity()V
    .locals 6

    .prologue
    .line 7583
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 7584
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 7586
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7587
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 7571
    return-void

    .line 7583
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3367
    packed-switch p1, :pswitch_data_0

    .line 3378
    return v1

    .line 3371
    :pswitch_0
    if-eqz p3, :cond_0

    .line 3372
    return v2

    .line 3374
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 3375
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 3376
    aget v3, v0, v2

    if-ne p1, v3, :cond_1

    aget v3, v0, v1

    if-ne p2, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 3367
    :pswitch_data_0
    .packed-switch 0x10a005b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x2

    .line 2856
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    .line 2857
    return v3

    .line 2859
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2946
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    return v3

    .line 2861
    :sswitch_0
    return v3

    .line 2864
    :sswitch_1
    return v3

    .line 2866
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 2869
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 2872
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 2874
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 2877
    :sswitch_6
    const/4 v0, 0x7

    return v0

    .line 2880
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 2883
    :sswitch_8
    const/16 v0, 0x9

    return v0

    .line 2886
    :sswitch_9
    const/16 v0, 0xa

    return v0

    .line 2889
    :sswitch_a
    const/16 v0, 0xb

    return v0

    .line 2892
    :sswitch_b
    const/16 v0, 0xc

    return v0

    .line 2895
    :sswitch_c
    const/16 v0, 0xd

    return v0

    .line 2898
    :sswitch_d
    const/16 v0, 0xe

    return v0

    .line 2901
    :sswitch_e
    const/16 v0, 0xf

    return v0

    .line 2903
    :sswitch_f
    const/16 v0, 0x10

    return v0

    .line 2905
    :sswitch_10
    const/16 v0, 0x11

    return v0

    .line 2907
    :sswitch_11
    const/16 v0, 0x12

    return v0

    .line 2911
    :sswitch_12
    const/16 v0, 0x13

    return v0

    .line 2915
    :sswitch_13
    const/16 v0, 0x14

    return v0

    .line 2918
    :sswitch_14
    const/16 v0, 0x15

    return v0

    .line 2921
    :sswitch_15
    const/16 v0, 0x16

    return v0

    .line 2924
    :sswitch_16
    const/16 v0, 0x17

    return v0

    .line 2927
    :sswitch_17
    const/16 v0, 0x18

    return v0

    .line 2930
    :sswitch_18
    const/16 v0, 0x19

    return v0

    .line 2934
    :sswitch_19
    const/16 v0, 0x1a

    return v0

    .line 2937
    :sswitch_1a
    const/16 v0, 0x1b

    return v0

    .line 2939
    :sswitch_1b
    const/16 v0, 0x1c

    return v0

    .line 2941
    :sswitch_1c
    const/16 v0, 0x1d

    return v0

    .line 2944
    :sswitch_1d
    const/16 v0, 0x1e

    return v0

    .line 2859
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_f
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_a
        0x7d5 -> :sswitch_7
        0x7d6 -> :sswitch_13
        0x7d7 -> :sswitch_8
        0x7d8 -> :sswitch_6
        0x7d9 -> :sswitch_11
        0x7da -> :sswitch_16
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_c
        0x7dd -> :sswitch_1
        0x7de -> :sswitch_10
        0x7df -> :sswitch_1b
        0x7e0 -> :sswitch_19
        0x7e1 -> :sswitch_e
        0x7e2 -> :sswitch_1d
        0x7e3 -> :sswitch_14
        0x7e4 -> :sswitch_12
        0x7e5 -> :sswitch_1c
        0x7e6 -> :sswitch_5
        0x7e7 -> :sswitch_9
        0x7e8 -> :sswitch_15
        0x7ea -> :sswitch_18
        0x7eb -> :sswitch_17
        0x7ed -> :sswitch_d
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_4
        0x7f0 -> :sswitch_1a
        0x7f1 -> :sswitch_3
        0x7f2 -> :sswitch_6
        0xbb6 -> :sswitch_e
    .end sparse-switch
.end method
