# Image segmentation and boundary count

Uses Otsu thresholding, binary inversion, and boundary tracing on a blood-cell image.

## Setup and execution

Open this folder in MATLAB and run:

```matlab
[count, binaryImage, boundaries] = imagesegmentation('blood3.png');
```

## Inputs

No fixed external dataset is required for the default entry point. See the notes below for bundled files or command-line input requirements.

## Outputs

Boundary count, binary image, boundary coordinates, and displayed figures.

## Implementation and limitations

Requires MATLAB and Image Processing Toolbox. blood3.png is bundled. The count intentionally includes enclosed boundaries/holes, matching the original bwboundaries behavior; it is not a validated count of individual cells. MATLAB was unavailable for execution.

## Verification

The workspace regression suite checks source/notebook validity and selected behavior with bundled or synthetic inputs. Full experiment training and historical metric reproduction are not implied. See the workspace `REFACTOR_REPORT.md` for exact test coverage and unresolved runtime requirements.

Toolbox requirements are also listed in `requirements-matlab.txt`; this is not a pip requirements file.
